% [5] Create an .m-file (not a function) called ass3main.m.This script will 
% be executed for grading. It will read the audio files 
% (no absolute paths!), call the functions below, 
% and plot their outputs etc.
% 
% [30] Plotting waveforms and spectra
% 
% 4.a [4] Add calls to your main script to generate 4 square wave signals:
% 
%  1) `220 Hz, Amplitude = 0.5, phase = 0, length = .5 seconds`
%  2)  `220 Hz, Amplitude = 0.5, phase = pi/2, length = .5 seconds`
%  3) `330 Hz, Amplitude = 0.5, phase = 0, length = .5 seconds`
%  4) `330 Hz, Amplitude = 0.5, phase = pi/2, length = .5 seconds`
% Plot the the first 5 ms of the signals and label the axes properly.
% 
% 4.b [4] Add calls to your main script to compute the spectrum and 
% plot for each signal (four figures subplots in one plot): the magnitude 
% spectrum, the phase spectrum, the real spectrum, and the imaginary 
% spectrum. Label all axes properly.
% 
% 4.c [4] Plot the log magnitude spectrum of signal 4.a.1) and 4.a.3). 
% Hint: log magnitude spectrum is given by 20*log10(X). 
% Label all axes properly.
% 
% 4.d [18] Discuss the properties of all spectra. 
% Discuss commonalities and differences. 
% How do the plots match your expectations?
% 
% [35] Computing Convolution
% 
% 5.a [5] Add to the main script the convolution of the two 
% attached audio files (cathy_2.wav and IR-Basilica_left.wav) 
% (ignore the different sample rates). 
% You should use Matlab's conv function for this part.
% 
% 5.c [10] Compute the difference between Matlab's conv output and the 
% output of your function. Use the first second of cathy_2.wavas input 
% signal and IR-Basilica_left.wav as impulse response 
% (see attached. ignore sample rate differences). 
% For stereo signals, always use the left channel only. 
% If there are differences, speculate why.
% 