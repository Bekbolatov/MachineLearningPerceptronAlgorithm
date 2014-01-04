function [] = drawWon(w,gsize=50)
    %assuming 2D plot with W col: w1 + w2*x + w3*y = 0
    % y = -(w1 + w2*x)/w3
    gsize = gsize + 5; % offset
    x = [-gsize,gsize];
    hold on;
    plot(x, -(w(1) + w(2)*x)/w(3), '-b');
    axis([-gsize,gsize,-gsize,gsize]);
    hold off;
end
