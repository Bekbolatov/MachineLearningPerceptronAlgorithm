function [Wout,r,i] = pla(X, Y, MAXITER=500)
    % X design matrix inputs
    % Y classification {-1,+1}
    % Wout estimate for weights
    % r return result: 0 didn't converge, 1 converged
    % number of iterations performed
    N = size(X)(1);
    D = size(X)(2) + 1;
    X = [ones(N,1), X];
    Wout = zeros(D,1);
    r = 0;
    
    for i = 1:MAXITER
        j = findBad(Wout,X,Y);
        if j < 0
            printf('found separation in %d iters\n', i);
            r = 1;
            return;
        else
            Wout = optimize(Wout,X,Y,j);
        end
    end
    disp('have not found yet, reached MAXITER');  
end


function wout = optimize(w,x,y,j)
    wout = w + y(j) * x(j,:)';
end

function bi = findBad(w,x,y)
    % w col, x design mtx
    bi = -1;
    for i = 1:size(x)(1)
        if linstepup(w,x,i)*y(i) < 0
            bi = i;
            break;
        end
    end
end

function r = linstepup(w,x,i)
    % w col, x col
    r = stepup(w' * x(i,:)');
end

function r = stepup(x,xt=0)
    r = 1;
    if x < xt
        r = -1;
    end
end





