function [t,x] = generateSawtooth(amplitude, frequencyInHz, lengthInS)

% Genenrates a sawtooth wave according to the arguments
% Approximated by the 20 lowest harmonics
% Assumes 44100 data points per second

% Returns t, time in seconds
%         x, the sawtooth wave

sampleRate = 44100;
samplePeriod = 1/sampleRate;
t = 0:samplePeriod:lengthInS;

omega1 = 2.*pi.*frequencyInHz;

x = 0;
for n = 1:20 % approximating via harmonics
    x = x + sin(omega1*n.*t)./n;
end

a = -amplitude; b = amplitude; % scaling to amplitude
x = (x-min(x))*(b-a)/(max(x)-min(x)) + a;

% sound(x, sampleRate);
% plot(t, x);

% Note: start the sine with a phase of zero,
% adjust the sine amplitudes with 1/i with i being the harmonic index;
% at the end of the function, normalize the maximum to amplitude of 1.

end