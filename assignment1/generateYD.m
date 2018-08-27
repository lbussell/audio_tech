function [t, x] = generateYD(startFrequencyInHZ)

% Plays yankee doodle
% Assumes 44100 data points per second

% Returns t, time in seconds
%         x, the song

sampleRate = 44100;
samplePeriod = 1/sampleRate;
amplitude = 1;
noteLength = 0.5;

freqs = startFrequencyInHZ .* [1 1 9/8 5/4 1 5/4 9/8 3/4 1 1 9/8 5/4 1];
t = 0:samplePeriod:(noteLength * length(freqs));

x = [];
for n = 1:length(freqs)
   [~, temp] =  generateSinusoidal(amplitude, freqs(n), noteLength);
   x = [x temp];
end
x = x';

sound(x, sampleRate);
audiowrite('YD.wav', x, sampleRate);

end