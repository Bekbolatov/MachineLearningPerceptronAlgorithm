function [] = plotBinClass(X, Y)
	% plot 2 or 3 dim data points if possible
    % gsize graph size +/-, default 50    
    orpos = 'b';
    orneg = 'r';
	if size(X)(2) == 2
		hold off;
		plot(X(Y>=0,:)(:,1), X(Y>=0,:)(:,2), orpos);
		hold on;
		plot(X(Y<0,:)(:,1), X(Y<0,:)(:,2), orneg);
		hold off;
	else if size(X)(2) == 3
		hold off;
		scatter3(X(Y>=0,:)(:,1), X(Y>=0,:)(:,2), X(Y>=0,:)(:,3), orpos, 'filled');
		hold on;
		scatter3(X(Y<0,:)(:,1), X(Y<0,:)(:,2), X(Y<0,:)(:,3), orneg, 'filled');
		hold off;
	end	
end