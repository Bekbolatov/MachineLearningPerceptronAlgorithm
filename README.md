ml-pla
======

Perceptron Learning Algorithm

This octave code will:
 - pick a separation line L, 
 - generate a random set D from a 2-dimensional RxR,
 - classify D using L: above/below - makes it linearly separable by construction
 - run PLA algorithm on the set D
 - plot estimated separation line


How to run:

Running:

    simpla(50);

will perform the above actions setting the sample size to 50.

Running:
    Win = [4, -2, 0, 6, 1]';
    [x,y] = generateLSsample(Win, 100); 
    [Wout,r,n] = pla(x,y);

will generate 100 samples in an arbitrary dimension R^n, implicitly given by vector Win, 
and will perform PLA algorithm on this dataset.


R-bee
