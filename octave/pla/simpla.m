function [] = simpla(nsize=50)
    % nsize - number of samples to generate
    [x,y] = generateLD2Dsample(unifrnd(-10,10),unifrnd(-50,50),nsize);
    [w,r,n] = pla(x,y); 
    drawWon(w);
    hold on;
    strpla = 'Perceptron learning algo';
    if r
        title(sprintf('%s (N: %d, iters: %d)',strpla,nsize,n));
    else
        title(sprintf('%s (not yet converged, N: %d, iters: %d)',strpla,nsize,n));
    end
end
