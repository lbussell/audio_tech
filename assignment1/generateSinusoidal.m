function [ t,x ] = generateSinusoidal( amplitude, frequencyInHz, lengthInS )

% Generates a sinusoidal wave according to the arguments
% Assumes 44100 data points per second

% Returns t, time in seconds
%         x, the sinusoidal wave

sampleRate = 44100;
samplePeriod = 1/sampleRate;
t = 0:samplePeriod:lengthInS;

omega1 = 2.*pi.*frequencyInHz;
x = amplitude * sin(omega1*t);

% sound(x, sampleRate);
% plot(t, x);

end

