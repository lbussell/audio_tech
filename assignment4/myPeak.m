function outputvector = myPeak(inputvector, freqvalue, qvalue, gain, samplerateinHz)  
% 8, [15] Implement a second order filter in 
% outputvector = myPeak(inputvector, freqvalue, qvalue, gain, samplerateinHz)  
% with Matlab's filter() function. Compute the coefficients as given here: 
% http://shepazu.github.io/Audio-EQ-Cookbook/audio-eq-cookbook.html 
% in the section peakingEQ, but make sure that that your arguments b, a are 
% in the format Matlab filter() expects (compare filter() description with 
% equation (4) on this page. Filter your noise and audio signal 
% (freq = 3000, Q = 4, gain = 12). Verify and discuss the output.

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

outputvector = filter(b, a, inputvector) ./ a(1);

end

