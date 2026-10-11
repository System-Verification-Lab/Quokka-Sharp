#!/usr/bin/env bash
# Usage: bash scripts/setup-synthesis-engines.sh [all|quokka-upstream|mitms|synthetiq]
# Prerequisites: git, curl, tar, shasum; Rust/Cargo for Synthetiq;
# C++ compiler, make, gfortran, BLAS and LAPACK for MITMS.
# macOS: brew install gcc openblas
set -euo pipefail

engine=${1:-all}
case "$engine" in
all | quokka-upstream | mitms | synthetiq) ;;
*)
  echo "Unknown engine: $engine" >&2
  exit 1
  ;;
esac

tools=$(cd "$(dirname "$0")/.." && pwd)/.solvers/synthesis
mkdir -p "$tools"
cd "$tools"

checkout() {
  local name=$1 repository=$2 revision=$3
  if [[ ! -d $name ]]; then
    git init -q "$name"
    git -C "$name" fetch --depth 1 "https://github.com/$repository" "$revision"
    git -C "$name" checkout --detach FETCH_HEAD
  fi
  [[ $(git -C "$name" rev-parse HEAD) == "$revision" ]] || {
    echo "Unexpected revision in $tools/$name; refusing to overwrite it." >&2
    exit 1
  }
}

if [[ $engine == all || $engine == quokka-upstream ]]; then
  checkout quokka-upstream System-Verification-Lab/Quokka-Sharp 8a7cdb6555d6bcdf2ff3e7adecbc4f232a6417b4
fi

if [[ $engine == all || $engine == mitms ]]; then
  checkout mitms ethroz/mitms c2256f9d1c34348d71487417be3972d556b28b47
  blas_flags=(-llapack -lblas)
  if [[ $(uname -s) == Darwin ]]; then
    blas_flags=(-L"$(brew --prefix openblas)/lib" -lopenblas)
  fi
  if [[ ! -f lapack-local/lib/liblapackpp.a ]]; then
    curl -fL --retry 2 -o lapackpp.tar.gz \
      https://master.dl.sourceforge.net/project/lapackpp/lapackpp-2.5.4.tar.gz
    echo '776c4b2b09412479e1559bcec08a71cfbb162dfbe3f6fbd4da52cef3039cddbc  lapackpp.tar.gz' | shasum -a 256 --check
    tar -xf lapackpp.tar.gz
    (
      cd lapackpp-2.5.4
      # The redundant declaration conflicts with macOS's system header.
      sed -i.bak '/^extern "C" double drand48(void) throw ();$/d' src/genmd.cc
      ./configure --prefix="$tools/lapack-local" --disable-shared --enable-static \
        CFLAGS='-O2 -std=gnu89' CXXFLAGS='-O2 -std=c++11' \
        --with-blas="${blas_flags[*]}" --with-lapack="${blas_flags[*]}"
      make -j2
      make install
    )
  fi
  mkdir -p mitms/build
  "${CXX:-c++}" -std=c++11 -O3 -DNDEBUG -pthread -I"$tools/lapack-local/include/lapackpp" \
    mitms/src/*.cpp "$tools/lapack-local/lib/liblapackpp.a" "${blas_flags[@]}" \
    -o mitms/build/mitms_original
fi

if [[ $engine == all || $engine == synthetiq ]]; then
  checkout synthetiq eth-sri/synthetiq aaddd5cfbd79a1e11a26bca4ee33d580dc6ddc40
  cargo build --manifest-path synthetiq/Cargo.toml --locked --release --bin synthetiq -j2
fi

echo "Ready: $engine"
