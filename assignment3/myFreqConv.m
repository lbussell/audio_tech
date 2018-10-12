function y = myFreqConv(x,h)
% 5.b [20] Implement a matlab function myFreqConv.m that computes time domain
% convolution via multiplication in the frequency domain.

% In this part, you may compute the FFT of each of the signal entirely,
% multiply them in frequency domain, and compute the inverse FFT to get 
% your result.

% x and h are the signal and impulse response respectively.

% Zeropad both signal and IR so that the length of the FFT is the power of
% 2 greater than length(x) + length(h) - 1.

% pad with the proper number of zeros
pad = 2^(nextpow2(length(x) + length(h) - 1));
x1 = [x; zeros(pad-length(x),1)];
h1 = [h; zeros(pad-length(h),1)];

% fourier transform
xft = fft(x1);
hft = fft(h1);

% multiply
c = xft.*hft;

% inverse fft
y = ifft(c);

end
