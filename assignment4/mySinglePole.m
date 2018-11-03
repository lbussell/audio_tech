function [outputvector] = mySinglePole(inputvector, alpha)
% 1. [20] function [outputvector] = mySinglePole(inputvector, alpha)
% The function implements a 1st order filter with the equation 
% y[n] = (1-alpha) x[n] + alpha y[n-1] 
% y is the output signal, alpha is the filter coefficient, 
% x is the input signal, n is the sample index
% Do not use Matlab's filter function.

outputvector = zeros(size(inputvector));
outputvector(1) = (1 - alpha) * inputvector(1);

% index starting at (n = 2) so that we can operate on (n - 1) safely
for n = 2:length(inputvector)
    outputvector(n) = (1 - alpha) * inputvector(n) + alpha * outputvector(n);
end

end