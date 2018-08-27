Assignment 1

1. [25] Write a function [t,x] = generateSinusoidal(amplitude, frequencyInHz, lengthInS) generating a sinusoidal 
according to the parameters, given that you assume 44100 data points per second (sample rate).
The output is the time t in seconds and the generated signal as vectors of the same length.
Plot the result of the function x over t for amplitude=0.5, frequencyInHz=2,lengthInS=1

2a. [25] Write a function [t,x] = generateYD(startFrequencyInHz) that returns a concatenated sequence of signals
of different frequencies by calling the generateSinusoidal function and appending the result.
Each segment should have a length of 0.5s;
the frequencies are: startFrequencyInHz * [1 1 9/8 5/4 1 5/4 9/8 3/4 1 1 9/8 5/4 1].

2b. [15] Generate the sequence with startFrequencyInHz = 440Hz and play the result with Matlab's
sound function (sample rate: 44100).
What is the generated sequence of musical intervals (Prime, Fifth, etc.)?
Export the result to a wave file.

2c. [10] What should the startFrequency be if you want to start this melody one major third higher (c# instead of a)?

3. [25] Write a function [t,x] = generateSawtooth(amplitude, frequencyInHz, lengthInS)generating
a sawtooth wave approximated with the 20 lowest harmonics. All other conditions as in 1.
Plot the result of the function x over t for amplitude=0.5, frequencyInHz=2,lengthInS=1
Note: start the sine with a phase of zero, adjust the sine amplitudes with 1/i with i being the harmonic index; at the end of the function, normalize the maximum to amplitude of 1.

Bonus question [5] (truncated at 100 points): Why do you hear clicks/pops in the melody generated in 2b?
