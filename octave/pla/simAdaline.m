function [w,r,n,x,y] = simAdaline(nsize=50,nu=0.0001)
    [x,y] = generateLD2Dsample(unifrnd(-10,10),unifrnd(-50,50),nsize);
    [w,r,n] = adaline(x,y,nu); 
    drawWon(w);
    hold on;
    strpla = 'Adaline learning algo';
    if r
        title(sprintf('%s (N: %d, iters: %d)',strpla,nsize,n));
    else
        title(sprintf('%s (not yet converged, N: %d, iters: %d)',strpla,nsize,n));
    end
end