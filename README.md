Perceptron Learning Algorithm and Adaline
======

Perceptron learning algorithm and Adaline (adaptive linear neuron) algorithm for perceptron learning.


This octave code will:
 - pick a separation line L, 
 - generate a random set D from a 2-dimensional RxR (or from a more general R<sup>n</sup>),
 - classify D using L: above/below - makes it linearly separable by construction
 - run PLA algorithm on the set D
 - alternatively, run Adaline algorithm on the set D
 - plot estimated separation line


How to run:

Running:

    simpla(50);

will perform the above actions setting the sample size to 50, using PLA algorithm.

Running:

    simAdaline(50); 

will do same as above, except it will use Adaline algorithm (adaptive linear neuron).

Running:

    simAdaline(50, 0.001); 

will do same as above, except it will use multiplier of 0.001 in the Adaline algorithm.

Running:

    Win = [4, -2, 0, 6, 1]';
    [x,y] = generateLSsample(Win, 100); 
    [Wout,r,n] = pla(x,y);

will generate 100 samples in an arbitrary dimension R<sup>n</sup>, implicitly given by vector Win, 
and will perform PLA algorithm on this dataset.


R-bee
