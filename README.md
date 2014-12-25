[![NPM version](https://badge.fury.io/js/gsl-cdf.svg)](http://badge.fury.io/js/gsl-cdf)

gsl-cdf-js
====================

probability distributions for JS via GNU Scientific Library

## Installation

Via npm:
```
npm install gsl-cdf
```

To use it inside node:
```
var cdf = require("gsl-cdf");
```

## API

The prefix `gsl_cdf_` was removed from the original function definitions. For example, while in C you would call `gsl_cdf_exponential_P(x, mu)` to evaluate the cumulative distribution function of an exponentially distributed random variable with mean *mu* at value *x* , the function is exported simply as `exponential_P(x, mu)`. 

Example:
```
cdf.exponential_P(3, 2);
```

Output:
```
0.7768698398515702
```
