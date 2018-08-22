function [t,x] = generateSawtooth(amplitude, frequencyInHz, lengthInS)

% Genenrate a sawtooth wave approximated with the 20 lowest harmonics.
% All other conditions as in generateSinusoidal.m.
% Plot the result of the function x over t for
% amplitude=0.5, frequencyInHz=2,lengthInS=1. 

% Note: start the sine with a phase of zero,
% adjust the sine amplitudes with 1/i with i being the harmonic index;
% at the end of the function, normalize the maximum to amplitude of 1.

t = null;
x = null;

end