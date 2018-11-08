function y = myCustomPeak(x, freqvalue, qvalue, gain, samplerateinHz)  
% 9. [10] Implement the 2nd order filter above 'manually' without the 
% filter function. Compare your function outputs with the output of
% question 8 and verify correct implementation.

A = sqrt(10^(gain / 20));
w0 = 2 * pi * (freqvalue / samplerateinHz);
alpha = sin(w0) / 2*qvalue;

a = zeros(1,3);
b = zeros(1,3);

b(1) = 1 + alpha * A;
b(2) = -2 * cos(w0);
b(3) = 1 - alpha * A;
a(1) = 1 + alpha / A;
a(2) = -2 * cos(w0);
a(3) = 1 - alpha / A;

% initialize y
y = zeros(size(x));
y(1) = (b(1)/a(1))*x(1);
y(2) = (b(1)/a(1))*x(2) + (b(2)/a(1))*x(1) - (a(2)/a(1))*y(1);

for n = 3:length(x)
   y(n) = (b(1)/a(1))*x(n) + (b(2)/a(1))*x(n-1) + (b(3)/a(1))*x(n-2) - (a(2)/a(1))*y(n-1) - (a(3)/a(2))*y(n-2);
end

% outputvector = filter(b, a, inputvector) ./ a(1);
% fvtool(b, a);

end