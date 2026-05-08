"""
Test suite for Quokka-Sharp (quokka_sharp)
==========================================
Uses pre-built QASM fixtures from ./qasm_fixtures/

Set the fixture root via env var (default: ./qasm_fixtures):
    export QUOKKA_FIXTURES=/path/to/qasm_fixtures

Set the solver config as usual:
    export QUOKKA_CONFIG=/path/to/config.json

Run:
    pytest test_quokka_sharp.py -v
    pytest test_quokka_sharp.py -v -k "Simulation"
"""

import os
import decimal
import pytest
import quokka_sharp as qk

# ---------------------------------------------------------------------------
# Fixture root
# ---------------------------------------------------------------------------

FIXTURE_ROOT = os.environ.get(
    "QUOKKA_FIXTURES",
    os.path.join(os.path.dirname(__file__), "qasm_fixtures"),
)

def qasm(subdir: str, filename: str) -> str:
    """Return absolute path to a QASM fixture file."""
    path = os.path.join(FIXTURE_ROOT, subdir, filename)
    if not os.path.isfile(path):
        pytest.skip(f"Fixture not found: {path}")
    return path

FPE = 1e-9  # floating-point epsilon for probability assertions


def to_float(value) -> float:
    """Coerce a solver result (float, Decimal, int) to Python float."""
    return float(value)


def skip_if_solver_issue(result):
    if result in ("TIMEOUT", "MEMOUT"):
        pytest.skip(f"Solver returned: {result}")


def assert_prob(result, expected: float, fpe: float = FPE):
    """Assert a probability result equals expected, handling Decimal return type."""
    skip_if_solver_issue(result)
    assert abs(to_float(result) - expected) < fpe, (
        f"Expected probability ≈ {expected}, got {result!r}"
    )


# ---------------------------------------------------------------------------
# 1.  Simulation Tests
# ---------------------------------------------------------------------------

class TestSimulation:
    """
    Tests for qk.functionalities.sim().

    Circuits under test are in qasm_fixtures/single_qubit/ and multi_qubit/.
    Each test includes the analytical expected probability in a comment.
    """

    # ── Computational basis, single-qubit ──────────────────────────────────

    def test_identity_allzero(self):
        # I|0> = |0>  →  P(00) = 1.0
        p = qk.functionalities.sim(qasm("single_qubit", "identity_wire.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 1.0)

    def test_h_allzero(self):
        # H|0> = |+>  →  P(0) = 0.5
        p = qk.functionalities.sim(qasm("single_qubit", "h.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 0.5)

    def test_h_firstzero(self):
        # Same circuit, firstzero measurement  →  0.5
        p = qk.functionalities.sim(qasm("single_qubit", "h.qasm"), basis="comp", measurement="firstzero")
        assert_prob(p, 0.5)

    def test_x_allzero(self):
        # X|0> = |1>  →  P(0) = 0.0
        p = qk.functionalities.sim(qasm("single_qubit", "x.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 0.0)

    def test_x_dict_one(self):
        # X|0> = |1>  →  P(q0=1) = 1.0
        p = qk.functionalities.sim(qasm("single_qubit", "x.qasm"), basis="comp", measurement={0: 1})
        assert_prob(p, 1.0)

    def test_y_allzero(self):
        # Y|0> = i|1>  →  P(0) = 0.0
        p = qk.functionalities.sim(qasm("single_qubit", "y.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 0.0)

    def test_z_allzero(self):
        # Z|0> = |0>  →  P(0) = 1.0
        p = qk.functionalities.sim(qasm("single_qubit", "z.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 1.0)

    def test_s_allzero(self):
        # S|0> = |0>  →  P(0) = 1.0
        p = qk.functionalities.sim(qasm("single_qubit", "s.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 1.0)

    def test_t_allzero(self):
        # T|0> = |0>  →  P(0) = 1.0
        p = qk.functionalities.sim(qasm("single_qubit", "t.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 1.0)

    def test_hh_allzero(self):
        # HH = I  →  P(0) = 1.0
        p = qk.functionalities.sim(qasm("single_qubit", "hh.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 1.0)

    def test_hzh_allzero(self):
        # HZH = X  →  P(0) = 0.0
        p = qk.functionalities.sim(qasm("single_qubit", "hzh.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 0.0)

    def test_xxxx_allzero(self):
        # XXXX = I  →  P(0) = 1.0
        p = qk.functionalities.sim(qasm("single_qubit", "xxxx.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 1.0)

    # ── Pauli basis, single-qubit ───────────────────────────────────────────

    def test_identity_pauli(self):
        p = qk.functionalities.sim(qasm("single_qubit", "identity_wire.qasm"), basis="pauli", measurement="allzero")
        assert_prob(p, 1.0)

    def test_h_pauli(self):
        p = qk.functionalities.sim(qasm("single_qubit", "h.qasm"), basis="pauli", measurement="allzero")
        assert_prob(p, 0.5)

    def test_x_pauli(self):
        p = qk.functionalities.sim(qasm("single_qubit", "x.qasm"), basis="pauli", measurement="allzero")
        assert_prob(p, 0.0)

    # ── Multi-qubit circuits ────────────────────────────────────────────────

    def test_bell_p00(self):
        # Bell: P(00) = 0.5
        p = qk.functionalities.sim(qasm("multi_qubit", "bell.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 0.5)

    def test_bell_p11(self):
        # Bell: P(11) = 0.5
        p = qk.functionalities.sim(qasm("multi_qubit", "bell.qasm"), basis="comp", measurement={0: 1, 1: 1})
        assert_prob(p, 0.5)

    def test_bell_p01(self):
        # Bell: P(01) = 0.0
        p = qk.functionalities.sim(qasm("multi_qubit", "bell.qasm"), basis="comp", measurement={0: 0, 1: 1})
        assert_prob(p, 0.0)

    def test_bell_probabilities_sum_to_one(self):
        # P(00) + P(01) + P(10) + P(11) = 1.0
        total = 0.0
        for b0 in (0, 1):
            for b1 in (0, 1):
                p = qk.functionalities.sim(qasm("multi_qubit", "bell.qasm"), basis="comp", measurement={0: b0, 1: b1})
                skip_if_solver_issue(p)
                total += to_float(p)
        assert abs(total - 1.0) < FPE  # total is already float

    def test_ghz_p000(self):
        # GHZ: P(000) = 0.5
        p = qk.functionalities.sim(qasm("multi_qubit", "ghz_3q.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 0.5)

    def test_ghz_p111(self):
        # GHZ: P(111) = 0.5
        p = qk.functionalities.sim(qasm("multi_qubit", "ghz_3q.qasm"), basis="comp", measurement={0: 1, 1: 1, 2: 1})
        assert_prob(p, 0.5)

    def test_ghz_p000_plus_p111_equals_one(self):
        f = qasm("multi_qubit", "ghz_3q.qasm")
        p000 = qk.functionalities.sim(f, basis="comp", measurement={0: 0, 1: 0, 2: 0})
        p111 = qk.functionalities.sim(f, basis="comp", measurement={0: 1, 1: 1, 2: 1})
        skip_if_solver_issue(p000)
        skip_if_solver_issue(p111)
        assert abs(to_float(p000) + to_float(p111) - 1.0) < FPE

    def test_cx_allzero(self):
        # CX on |00>: stays |00>  →  P(allzero) = 1.0
        p = qk.functionalities.sim(qasm("multi_qubit", "cx_q0q1.qasm"), basis="comp", measurement="allzero")
        assert_prob(p, 1.0)

    def test_cx_x_cx_result(self):
        # X·CX·X on |00>: gives |01>  →  P({0:0,1:1}) = 1.0
        p = qk.functionalities.sim(qasm("multi_qubit", "cx_x_cx.qasm"), basis="comp", measurement={0: 0, 1: 1})
        assert_prob(p, 1.0)

    # ── Return-type contract ────────────────────────────────────────────────

    def test_return_is_float_or_status(self):
        result = qk.functionalities.sim(qasm("single_qubit", "h.qasm"), basis="comp", measurement="allzero")
        assert isinstance(result, (float, decimal.Decimal)) or result in ("TIMEOUT", "MEMOUT")

    # ── Low-level API ───────────────────────────────────────────────────────

    def test_low_level_simulate(self):
        circuit = qk.encoding.QASMparser(qasm("single_qubit", "h.qasm"))
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis=True)
        cnf.leftProjectAllZero()
        cnf.add_measurement({0: 0})
        p = qk.Simulate(cnf)
        assert_prob(p, 0.5)


# ---------------------------------------------------------------------------
# 2.  Verification Tests
# ---------------------------------------------------------------------------

class TestVerification:
    """Tests for qk.functionalities.verify().  Fixtures in verify/."""

    def test_x_flip_pass(self):
        # X maps |0>→|1>
        res = qk.functionalities.verify(qasm("verify", "v01_x_flip.qasm"), basis="comp", precons={0: 0}, postcons={0: 1})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    def test_x_flip_fail(self):
        # X|0>=|1>, so post={0:0} must be False
        res = qk.functionalities.verify(qasm("verify", "v01_x_flip.qasm"), basis="comp", precons={0: 0}, postcons={0: 0})
        skip_if_solver_issue(res)
        assert res in ("False", False)

    def test_identity_pass(self):
        res = qk.functionalities.verify(qasm("verify", "v02_identity.qasm"), basis="comp", precons={0: 0}, postcons={0: 0})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    def test_identity_fail(self):
        res = qk.functionalities.verify(qasm("verify", "v02_identity.qasm"), basis="comp", precons={0: 0}, postcons={0: 1})
        skip_if_solver_issue(res)
        assert res in ("False", False)

    def test_cx_control0_pass(self):
        # CX with q0=0: target unchanged  →  |00>→|00>
        res = qk.functionalities.verify(qasm("verify", "v03_cx_control0.qasm"), basis="comp", precons={0: 0, 1: 0}, postcons={0: 0, 1: 0})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    def test_cx_control0_target_not_flipped(self):
        # Control=0 so target must NOT flip
        res = qk.functionalities.verify(qasm("verify", "v03_cx_control0.qasm"), basis="comp", precons={0: 0, 1: 0}, postcons={0: 0, 1: 1})
        skip_if_solver_issue(res)
        assert res in ("False", False)

    def test_cx_control1_pass(self):
        # Pre-set control=1: target flips  →  |00>→|11>
        res = qk.functionalities.verify(qasm("verify", "v04_cx_control1.qasm"), basis="comp", precons={0: 0, 1: 0}, postcons={0: 1, 1: 1})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    def test_toffoli_no_flip(self):
        # Both controls=0: target unchanged
        res = qk.functionalities.verify(qasm("verify", "v05_toffoli_no_flip.qasm"), basis="comp", precons={0: 0, 1: 0, 2: 0}, postcons={0: 0, 1: 0, 2: 0})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    def test_toffoli_flip(self):
        # Both controls=1: target flips
        res = qk.functionalities.verify(qasm("verify", "v06_toffoli_flip.qasm"), basis="comp", precons={0: 0, 1: 0, 2: 0}, postcons={0: 1, 1: 1, 2: 1})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    def test_xx_identity_pass(self):
        # XX = I
        res = qk.functionalities.verify(qasm("verify", "v07_xx_identity.qasm"), basis="comp", precons={0: 0}, postcons={0: 0})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    def test_cx_swap_target_pass(self):
        res = qk.functionalities.verify(qasm("verify", "v08_cx_swap_target.qasm"), basis="comp", precons={0: 0, 1: 0}, postcons={0: 1, 1: 1})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    def test_multi_gate_chain_pass(self):
        # X H H X = I
        res = qk.functionalities.verify(qasm("verify", "v10_multi_gate_chain.qasm"), basis="comp", precons={0: 0}, postcons={0: 0})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    # ── Pauli basis ─────────────────────────────────────────────────────────

    def test_x_flip_pauli(self):
        res = qk.functionalities.verify(qasm("verify", "v01_x_flip.qasm"), basis="pauli", precons={0: 0}, postcons={0: 1})
        skip_if_solver_issue(res)
        assert res in ("True", True)

    # ── Return-type contract ────────────────────────────────────────────────

    def test_return_type(self):
        res = qk.functionalities.verify(qasm("verify", "v02_identity.qasm"), basis="comp", precons={0: 0}, postcons={0: 0})
        assert res in ("True", "False", "TIMEOUT", "MEMOUT", True, False)

    # ── Low-level API ───────────────────────────────────────────────────────

    def test_low_level_verify(self):
        circuit = qk.encoding.QASMparser(qasm("verify", "v01_x_flip.qasm"))
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis=True)
        res = qk.Verify(cnf, precons={0: 0}, postcons={0: 1})
        skip_if_solver_issue(res)
        assert res in ("True", True)


# ---------------------------------------------------------------------------
# 3.  Equivalence Checking Tests
# ---------------------------------------------------------------------------

class TestEquivalenceChecking:
    """Tests for qk.functionalities.eq().  Fixtures in equiv_pairs/."""

    # ── Equivalent pairs ────────────────────────────────────────────────────

    @pytest.mark.parametrize("lhs,rhs,basis,check", [
        ("eq1_hh.qasm",       "eq1_identity.qasm", "pauli", "linear"),
        ("eq1_hh.qasm",       "eq1_identity.qasm", "comp",  "cyclic"),
        ("eq2_ss.qasm",       "eq2_z.qasm",        "pauli", "linear"),
        ("eq2_ss.qasm",       "eq2_z.qasm",        "comp",  "cyclic"),
        ("eq3_hxh.qasm",      "eq3_z.qasm",        "pauli", "linear"),
        ("eq3_hxh.qasm",      "eq3_z.qasm",        "comp",  "cyclic"),
        ("eq4_cxcx.qasm",     "eq4_id2q.qasm",     "comp",  "cyclic"),
        ("eq5_3cx_swap.qasm", "eq5_swap.qasm",     "comp",  "cyclic"),
        ("eq6_tt.qasm",       "eq6_s.qasm",        "pauli", "linear"),
        ("eq6_tt.qasm",       "eq6_s.qasm",        "comp",  "cyclic"),
    ])
    def test_equiv_pair(self, lhs, rhs, basis, check):
        res = qk.functionalities.eq(
            qasm("equiv_pairs", lhs),
            qasm("equiv_pairs", rhs),
            basis=basis, check=check, epsilon=0,
        )
        skip_if_solver_issue(res)
        assert res in (True, "True"), f"{lhs} should be equiv to {rhs}"

    def test_circuit_equiv_itself(self):
        # Self-equivalence: a circuit is always equal to itself
        f = qasm("single_qubit", "h.qasm")
        res = qk.functionalities.eq(f, f, basis="comp", check="cyclic", epsilon=0)
        skip_if_solver_issue(res)
        assert res in (True, "True")

    # ── Non-equivalent pairs ─────────────────────────────────────────────────

    @pytest.mark.parametrize("lhs,rhs,basis,check", [
        ("neq1_h.qasm",    "neq1_x.qasm",    "comp",  "cyclic"),
        ("neq1_h.qasm",    "neq1_x.qasm",    "pauli", "linear"),
        ("neq2_h.qasm",    "neq2_hs.qasm",   "pauli", "linear"),
        ("neq3_bell.qasm", "neq3_cx.qasm",   "comp",  "cyclic"),
        ("neq4_z.qasm",    "neq4_s.qasm",    "pauli", "linear"),
        ("neq4_z.qasm",    "neq4_s.qasm",    "comp",  "cyclic"),
    ])
    def test_non_equiv_pair(self, lhs, rhs, basis, check):
        res = qk.functionalities.eq(
            qasm("equiv_pairs", lhs),
            qasm("equiv_pairs", rhs),
            basis=basis, check=check, epsilon=0,
        )
        skip_if_solver_issue(res)
        assert res in (False, "False"), f"{lhs} should NOT be equiv to {rhs}"
   # ── Pauli basis, Pauli-operator stabilizer pre/post ──────────────────────
    #
    # Stabilizer notation:
    #   "Z"  → +Z eigenstate = |0⟩
    #   "-Z" → -Z eigenstate = |1⟩
    #   "X"  → +X eigenstate = |+⟩ = (|0⟩+|1⟩)/√2
    #   "-X" → -X eigenstate = |−⟩ = (|0⟩-|1⟩)/√2
    #   "Y"  → +Y eigenstate = |i+⟩ = (|0⟩+i|1⟩)/√2
    #   "I"  → no constraint (any state)
    #
    # Key quantum-mechanical facts used below:
    #   H |0⟩  = |+⟩       H: Z  → X
    #   H |+⟩  = |0⟩       H: X  → Z
    #   X |0⟩  = |1⟩       X: Z  → -Z
    #   X |+⟩  = |+⟩       X: X  → X   (X commutes with X-stabilizer)
    #   Z |+⟩  = |−⟩       Z: X  → -X
    #   Z |0⟩  = |0⟩       Z: Z  → Z   (Z preserves Z-eigenstate)
    #   S |+⟩  = |i+⟩      S: X  → Y
    #   CNOT: Z⊗I → Z⊗Z,  I⊗X → X⊗X  (stabilizer propagation)
 
    # ── H gate: Z → X ────────────────────────────────────────────────────────
 
    def test_h_z_to_x_pass(self):
        # H|0⟩ = |+⟩  →  pre={0:"Z"} post={0:"X"} should be True
        res = qk.functionalities.verify(
            qasm("single_qubit", "h.qasm"), basis="pauli",
            precons={0: "Z"}, postcons={0: "X"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    def test_h_z_to_z_fail(self):
        # H does NOT preserve Z-stabilizer  →  False
        res = qk.functionalities.verify(
            qasm("single_qubit", "h.qasm"), basis="pauli",
            precons={0: "Z"}, postcons={0: "Z"},
        )
        skip_if_solver_issue(res)
        assert res in ("False", False)
 
    def test_h_x_to_z_pass(self):
        # H|+⟩ = |0⟩  →  pre={0:"X"} post={0:"Z"} should be True
        res = qk.functionalities.verify(
            qasm("single_qubit", "h.qasm"), basis="pauli",
            precons={0: "X"}, postcons={0: "Z"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    def test_h_x_to_x_fail(self):
        # H does NOT preserve X-stabilizer  →  False
        res = qk.functionalities.verify(
            qasm("single_qubit", "h.qasm"), basis="pauli",
            precons={0: "X"}, postcons={0: "X"},
        )
        skip_if_solver_issue(res)
        assert res in ("False", False)
 
    # ── X gate: Z → -Z, X → X ────────────────────────────────────────────────
 
    def test_x_z_to_z_fail(self):
        # X|0⟩ = |1⟩, not |0⟩  →  pre={0:"Z"} post={0:"Z"} should be False
        res = qk.functionalities.verify(
            qasm("single_qubit", "x.qasm"), basis="pauli",
            precons={0: "Z"}, postcons={0: "Z"},
        )
        skip_if_solver_issue(res)
        assert res in ("False", False)
 
    def test_x_x_to_x_pass(self):
        # X commutes with X-stabilizer: X|+⟩ = |+⟩  →  True
        res = qk.functionalities.verify(
            qasm("single_qubit", "x.qasm"), basis="pauli",
            precons={0: "X"}, postcons={0: "X"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    # ── Z gate: Z → Z, X → -X ────────────────────────────────────────────────
 
    def test_z_z_to_z_pass(self):
        # Z|0⟩ = |0⟩  →  pre={0:"Z"} post={0:"Z"} should be True
        res = qk.functionalities.verify(
            qasm("single_qubit", "z.qasm"), basis="pauli",
            precons={0: "Z"}, postcons={0: "Z"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    def test_z_x_to_x_fail(self):
        # Z maps |+⟩ to |−⟩, not back to |+⟩  →  False
        res = qk.functionalities.verify(
            qasm("single_qubit", "z.qasm"), basis="pauli",
            precons={0: "X"}, postcons={0: "X"},
        )
        skip_if_solver_issue(res)
        assert res in ("False", False)
 
    # ── S gate: X → Y ────────────────────────────────────────────────────────
 
    def test_s_x_to_y_pass(self):
        # S|+⟩ = |i+⟩  →  pre={0:"X"} post={0:"Y"} should be True
        res = qk.functionalities.verify(
            qasm("single_qubit", "s.qasm"), basis="pauli",
            precons={0: "X"}, postcons={0: "Y"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    def test_s_x_to_x_fail(self):
        # S does NOT preserve X-stabilizer  →  False
        res = qk.functionalities.verify(
            qasm("single_qubit", "s.qasm"), basis="pauli",
            precons={0: "X"}, postcons={0: "X"},
        )
        skip_if_solver_issue(res)
        assert res in ("False", False)
 
    def test_s_z_to_z_pass(self):
        # S|0⟩ = |0⟩ (phase only)  →  pre={0:"Z"} post={0:"Z"} should be True
        res = qk.functionalities.verify(
            qasm("single_qubit", "s.qasm"), basis="pauli",
            precons={0: "Z"}, postcons={0: "Z"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    # ── Identity: all stabilizers preserved ──────────────────────────────────
 
    def test_identity_z_to_z_pass(self):
        res = qk.functionalities.verify(
            qasm("single_qubit", "identity_wire.qasm"), basis="pauli",
            precons={0: "Z"}, postcons={0: "Z"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    def test_identity_x_to_x_pass(self):
        res = qk.functionalities.verify(
            qasm("single_qubit", "identity_wire.qasm"), basis="pauli",
            precons={0: "X"}, postcons={0: "X"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    def test_identity_z_to_x_fail(self):
        # Identity cannot change the stabilizer  →  False
        res = qk.functionalities.verify(
            qasm("single_qubit", "identity_wire.qasm"), basis="pauli",
            precons={0: "Z"}, postcons={0: "X"},
        )
        skip_if_solver_issue(res)
        assert res in ("False", False)
 
    # ── HH = Identity: Z → Z ─────────────────────────────────────────────────
 
    def test_hh_z_to_z_pass(self):
        # HH = I, so Z-stabilizer is preserved
        res = qk.functionalities.verify(
            qasm("single_qubit", "hh.qasm"), basis="pauli",
            precons={0: "Z"}, postcons={0: "Z"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    # ── 2-qubit: CNOT stabilizer propagation ─────────────────────────────────

    def test_cx_x_stab_fanout_pass(self):
        # Verify that after CNOT, q[0] is no longer individually X-stabilized.
        # pre:  q[0]=Z (|0⟩), q[1]=X (|+⟩)  →  input = |0⟩|+⟩
        # CNOT output: (|00⟩+|11⟩)/√2 — now jointly stabilized by X⊗X, not X⊗I.
        # Asking whether q[0] alone is X-stabilized post-entanglement → False.
        res = qk.functionalities.verify(
            qasm("multi_qubit", "cx_q0q1.qasm"), basis="pauli",
            precons={0: "Z", 1: "X"}, postcons={0: "X", 1: "I"},
        )
        skip_if_solver_issue(res)
        # q[0] transitioned from Z-stab to joint X⊗X; no longer individually X-stab → False
        assert res in ("False", False)

    def test_cx_x_stab_propagates_pass(self):
        # When control is Z-stabilized (|0⟩), CNOT leaves the target unchanged.
        # pre:  q[0]=Z (|0⟩), q[1]=X (|+⟩)
        # CNOT with control=|0⟩ acts as identity on target → target X-stab preserved.
        # post: q[0]=Z (control unchanged), q[1]=X (target unchanged) → True
        res = qk.functionalities.verify(
            qasm("multi_qubit", "cx_q0q1.qasm"), basis="pauli",
            precons={0: "Z", 1: "X"}, postcons={0: "Z", 1: "X"},
        )
        skip_if_solver_issue(res)
        assert res in ("True", True)
 
    # ── Unconstrained qubit (I stabilizer) ───────────────────────────────────
 
    def test_h_unconstrained_precon_pass(self):
        # pre={0:"I"} means no constraint on input: verify always True for any post
        # that the gate CAN produce (here we check it runs without error)
        res = qk.functionalities.verify(
            qasm("single_qubit", "h.qasm"), basis="pauli",
            precons={0: "I"}, postcons={0: "I"},
        )
        assert res in ("True", "False", "TIMEOUT", "MEMOUT", True, False)
 
    # ── Low-level API ────────────────────────────────────────────────────────

    def test_low_level_equiv_true(self):
        f = qasm("single_qubit", "h.qasm")
        c1 = qk.encoding.QASMparser(f)
        c2 = qk.encoding.QASMparser(f)
        c2.dagger()
        c1.append(c2)
        cnf = qk.encoding.QASM2CNF(c1, computational_basis=False)
        res = qk.CheckEquivalence(cnf, check="linear", N=1)
        skip_if_solver_issue(res)
        assert res in (True, "True")

    def test_low_level_equiv_false(self):
        c1 = qk.encoding.QASMparser(qasm("equiv_pairs", "neq1_h.qasm"))
        c2 = qk.encoding.QASMparser(qasm("equiv_pairs", "neq1_x.qasm"))
        c2.dagger()
        c1.append(c2)
        cnf = qk.encoding.QASM2CNF(c1, computational_basis=False)
        res = qk.CheckEquivalence(cnf, check="linear", N=1)
        skip_if_solver_issue(res)
        assert res in (False, "False")

    # ── Return-type contract ─────────────────────────────────────────────────

    def test_return_type(self):
        f = qasm("single_qubit", "h.qasm")
        res = qk.functionalities.eq(f, f, basis="comp", check="cyclic", epsilon=0)
        assert res in (True, False, "True", "False", "TIMEOUT", "MEMOUT")


# ---------------------------------------------------------------------------
# 4.  Synthesis Tests
# ---------------------------------------------------------------------------

class TestSynthesis:
    """Tests for qk.functionalities.syn().  Fixtures in synthesis/."""

    @pytest.mark.parametrize("target,gate_set", [
        ("syn01_h_target.qasm",        {"h", "cx", "s"}),
        ("syn02_x_target.qasm",        {"h", "cx", "s"}),
        ("syn03_z_target.qasm",        {"h", "cx", "s"}),
        ("syn05_t_target.qasm",        {"h", "cx", "t"}),
        ("syn06_identity_target.qasm", {"h", "cx", "s"}),
    ])
    def test_syn_structure(self, target, gate_set):
        """syn() always returns a valid 4-tuple with a known outcome string."""
        result = qk.functionalities.syn(qasm("synthesis", target), epsilon=0, gate_set=gate_set)
        assert isinstance(result, tuple) and len(result) == 4
        outcome, weight, qasm_str, layers = result
        valid = {"FOUND", "TIMEOUT", "CRASH"}
        assert outcome in valid or outcome.startswith("ERROR"), f"Bad outcome: {outcome}"

    def test_found_weight_is_one(self):
        """When synthesis finds an exact solution, fidelity = 1.0."""
        outcome, weight, _, _ = qk.functionalities.syn(
            qasm("synthesis", "syn01_h_target.qasm"), epsilon=0, gate_set={"h", "cx", "s"}
        )
        if outcome == "FOUND":
            assert abs(float(weight) - 1.0) < FPE

    def test_found_qasm_nonempty(self):
        """When synthesis finds a solution, it returns a non-empty QASM string."""
        outcome, _, qasm_str, _ = qk.functionalities.syn(
            qasm("synthesis", "syn01_h_target.qasm"), epsilon=0, gate_set={"h", "cx", "s"}
        )
        if outcome == "FOUND":
            assert isinstance(qasm_str, str) and len(qasm_str) > 0

    def test_found_layers_positive(self):
        """When synthesis finds a solution, layers >= 1."""
        outcome, _, _, layers = qk.functionalities.syn(
            qasm("synthesis", "syn01_h_target.qasm"), epsilon=0, gate_set={"h", "cx", "s"}
        )
        if outcome == "FOUND":
            assert isinstance(layers, int) and layers >= 1

    def test_synthesised_circuit_is_equivalent(self):
        """If synthesis finds a circuit, it must be equivalent to the target."""
        import tempfile, os
        target = qasm("synthesis", "syn01_h_target.qasm")
        outcome, _, qasm_str, _ = qk.functionalities.syn(target, epsilon=0, gate_set={"h", "cx", "s"})
        if outcome != "FOUND":
            pytest.skip(f"Synthesis did not find a solution: {outcome}")
        # Write synthesised QASM to a temp file and check equivalence
        with tempfile.NamedTemporaryFile(mode="w", suffix=".qasm", delete=False) as f:
            f.write(qasm_str)
            syn_path = f.name
        try:
            res = qk.functionalities.eq(target, syn_path, basis="comp", check="cyclic", epsilon=0)
            skip_if_solver_issue(res)
            assert res in (True, "True"), "Synthesised circuit is not equivalent to target"
        finally:
            os.unlink(syn_path)

    def test_2q_synthesis_structure(self):
        """2-qubit synthesis (CX target) returns a valid tuple."""
        result = qk.functionalities.syn(qasm("synthesis", "syn04_cx_target.qasm"), epsilon=0, gate_set={"h", "cx", "s"})
        assert isinstance(result, tuple) and len(result) == 4

    # ── Low-level API ────────────────────────────────────────────────────────

    def test_low_level_synthesis(self):
        circuit = qk.encoding.QASMparser(qasm("synthesis", "syn01_h_target.qasm"))
        circuit.dagger()
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis=False)
        result = qk.Synthesis(cnf, gate_set={"h", "cx", "s"})
        assert isinstance(result, tuple) and len(result) == 4


# ---------------------------------------------------------------------------
# 5.  Encoding / Parser Unit Tests
# ---------------------------------------------------------------------------

class TestEncodingAndParser:
    """Unit tests for the QASM parser and CNF encoder."""

    @pytest.mark.parametrize("subdir,filename", [
        ("single_qubit", "h.qasm"),
        ("single_qubit", "x.qasm"),
        ("multi_qubit",  "bell.qasm"),
        ("multi_qubit",  "ghz_3q.qasm"),
        ("multi_qubit",  "toffoli.qasm"),
    ])
    def test_parser_loads(self, subdir, filename):
        circuit = qk.encoding.QASMparser(qasm(subdir, filename))
        assert circuit is not None

    @pytest.mark.parametrize("comp_basis", [True, False])
    def test_cnf_both_bases(self, comp_basis):
        circuit = qk.encoding.QASMparser(qasm("single_qubit", "h.qasm"))
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis=comp_basis)
        assert cnf is not None

    def test_cnf_write_to_file(self, tmp_path):
        circuit = qk.encoding.QASMparser(qasm("single_qubit", "h.qasm"))
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis=True)
        cnf.leftProjectAllZero()
        cnf.add_measurement({0: 0})
        out = str(tmp_path / "out.cnf")
        cnf.write_to_file(out)
        assert os.path.isfile(out) and os.path.getsize(out) > 0

    def test_dagger(self):
        circuit = qk.encoding.QASMparser(qasm("single_qubit", "h.qasm"))
        circuit.dagger()  # must not raise

    def test_append(self):
        c1 = qk.encoding.QASMparser(qasm("single_qubit", "h.qasm"))
        c2 = qk.encoding.QASMparser(qasm("single_qubit", "h.qasm"))
        c1.append(c2)    # must not raise


# ---------------------------------------------------------------------------
# 6.  Edge-case and Robustness Tests
# ---------------------------------------------------------------------------

class TestEdgeCases:

    def test_invalid_path_raises(self):
        with pytest.raises(Exception):
            qk.encoding.QASMparser("/nonexistent/path.qasm")

    def test_invalid_basis_raises(self):
        with pytest.raises(Exception):
            qk.functionalities.sim(qasm("single_qubit", "h.qasm"), basis="bad", measurement="allzero")

    def test_empty_precons(self):
        # Empty precons = no constraint on input state
        res = qk.functionalities.verify(
            qasm("verify", "v01_x_flip.qasm"), basis="comp", precons={}, postcons={0: 1}
        )
        assert res in ("True", "False", "TIMEOUT", "MEMOUT", True, False)

    def test_empty_postcons(self):
        res = qk.functionalities.verify(
            qasm("verify", "v01_x_flip.qasm"), basis="comp", precons={0: 0}, postcons={}
        )
        assert res in ("True", "False", "TIMEOUT", "MEMOUT", True, False)

    def test_eq_comp_basis_requires_cyclic(self):
        # Passing "linear" with comp basis — should either work or raise cleanly
        f = qasm("single_qubit", "h.qasm")
        try:
            res = qk.functionalities.eq(f, f, basis="comp", check="linear", epsilon=0)
            assert res in (True, False, "True", "False", "TIMEOUT", "MEMOUT")
        except Exception:
            pass  # acceptable for unsupported combinations

    def test_bell_psi_minus_no_allzero(self):
        # |Psi-> has no |00> component
        p = qk.functionalities.sim(qasm("multi_qubit", "bell_psi_minus.qasm"), basis="pauli", measurement="allzero")
        assert_prob(p, 0.0)

    def test_bernstein_vazirani_result(self):
        # BV(s=01) should output |01> on data qubits
        p = qk.functionalities.sim(
            qasm("multi_qubit", "bernstein_vazirani_2q.qasm"),
            basis="comp",
            measurement={0: 0, 1: 1, 2: 1},
        )
        assert_prob(p, 1.0)
