# sourced by other script
# compile python module, prepare environment
set -e
if ! [ -d build ]; then
    mkdir build
    cmake -B build .
fi

make -j3 -C build VERBOSE=1
export PYTHONPATH="build"

export MKL_NUM_THREADS=1
export NUMEXPR_NUM_THREADS=1
export OMP_NUM_THREADS=1