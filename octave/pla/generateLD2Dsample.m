function [X, Y] = generateLD2Dsample(a,b,nsize=20,gsize=50)
    % y=ax+b
    % output = [ [x1(1),x2(1),y(1)] ;  [x1(2),x2(2),y(2)] ; [ ... ] ... ]
    % nsize sample size, default 20
    % gsize graph size +/-, default 50
    
    orpos = '.b';
    orneg = '.r';
    
    gxmin = -gsize;
    gxmax = gsize;
    gymin = -gsize;
    gymax = gsize;
    
    xi = unifrnd(gxmin, gxmax, 1, nsize);
    yi = unifrnd(gymin, gymax, 1, nsize);
    
    X = [xi',yi'];
    Y = 2 .* (yi > xi .* a + b)'  .- 1;
    
    iall = 1:nsize;
    ipos = find(yi > xi .* a + b);
    ineg = setdiff(iall, ipos);
    
    xoutpos = xi(ipos);
    youtpos = yi(ipos);
    xoutneg = xi(ineg);
    youtneg = yi(ineg);
    
    hold off;
    plot(xoutpos, youtpos, orpos);
    hold on;
    plot(xoutneg, youtneg, orneg);
    hold off;
    
    r = 0;
end