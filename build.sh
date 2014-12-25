#!/bin/sh

export DIR="$(pwd)"
export GSL=$DIR/gsl-js

cd $GSL

emconfigure ./configure
emmake make

cd $DIR

emcc -O3 gsl-js/cdf/*.o gsl-js/err/*.o gsl-js/randist/*.o gsl-js/specfunc/*.o gsl-js/sys/*.o --bind cdf.cpp -I./gsl-js --memory-init-file 0 -o cdf.js

echo "JS build finished"
