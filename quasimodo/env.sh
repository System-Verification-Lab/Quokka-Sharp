DIR=${BASH_SOURCE[0]}
DIR="`dirname -- $DIR`"
pushd $DIR > /dev/null
DIR="`pwd`"
popd > /dev/null

echo "Adding Quasimodo python bindings in $DIR to the environment variables"

export DYLD_LIBRARY_PATH=$DIR:$DYLD_LIBRARY_PATH
export PYTHONPATH=$DIR:$PYTHON_PATH
