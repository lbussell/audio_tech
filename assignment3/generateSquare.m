function [t,x] = generateSquare(amplitude,frequencyInHz, lengthInS, phaseInRadians)

% generates a square wave with the given parameters 
% x is the square wave, t is time in seconds
% generated at 65536 samples per second

fs = 65536;
t = linspace(0,lengthInS,fs*lengthInS);

% heaviside returns either 0, 1/2, or 1
x = 2*amplitude * (ceil(heaviside(sin(2*pi*frequencyInHz.*t + phaseInRadians)))) - amplitude;
x = amplitude * square(2*pi*t*frequencyInHz + phaseInRadians);
% sound(x, fs);
% plot(t, x);

end