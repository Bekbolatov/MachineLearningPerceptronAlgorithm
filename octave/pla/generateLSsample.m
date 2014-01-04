function [X, Y] = generateLSsample(W, nsize=20, gsize=50)
	% generate a linearly separable dataset for any dimension
    % plane: w' * x = 0; and X(:,1) = 1,1,1,1 and size(X)(2) = dim+1
	% W is the weights vector. size(W)(1) or size(W)(2): dim is deduced to be the dimension of input space, 1 added on top to make first component equal 1 for all samples
    % nsize sample size, default 20
    % gsize graph size +/-, default 50    
    X = [ones(nsize, 1), unifrnd(-gsize, gsize, nsize, size(W)(1) - 1)];
    Y = 2 * (X * W > 0) - 1; 
	X(:,1) = [];
end