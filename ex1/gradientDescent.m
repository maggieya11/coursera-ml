function [theta, J_history,test] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% For test pattern,
% theta is a 2x1 matrix
% X is a 97x2 matrix
% Y is a 97x1 matrix

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
Jmin = 1e6;
test = zeros(2, num_iters);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    
    % theda computation (iteration > elements)
    % slope = J_history(iter) - J_history(iter-1); 
    %if(iter <= length(X))
    %    theta = theta + alpha*slope*X(iter,:);
    %end
    %    theta = theta + alpha*slope*X(97,:);
    
    h = X*theta;
    pred_slope = (h-y)/m;  % dJ/d(theta) @ [theta0,theta1]
    theta = theta - alpha*X'*pred_slope
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, test(:,iter));
    
    
end


end
