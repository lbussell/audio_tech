function [FreqVector, TimeVector, MagnitudeSpectrogram] = mySpecgram(inputSignalVector, blocksize, hopsize, fsInHz)
% Bonus: [10]
% 
% Create a function called [FreqVector, TimeVector, MagnitudeSpectrogram] 
% = mySpecgram(inputSignalVector, blocksize, hopsize, fsInHz) that computes 
% the FFT per block windowed with a hann window and plots the log spectrum 
% (decibel). You are allowed the use of the following functions: 
% fft, buffer, hann, image. 
% Compare your result with Matlab's spectrogram function. 
% Make sure to use the same parametrization. To use the same 
% audio example as in class, download the sax_example.wav
% Click to view undefined
% file for this part
FreqVector = null;
TimeVector = null;
MagnitudeSpectrogram = null;
end

