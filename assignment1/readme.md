Assignment 1: Sinusoids
======

### Generating Sinusoidal Waves
- `generateSinusoidal(amplitude, frequencyInHz, lengthInS)`
  - Generates a sinusoidal according to the parameters, assuming a sample rate of 44100 Hz.
  - Returns *t*, the time in seconds, and *x*, the generated signal, both as vectors.
- The result of plotting `generateSinusoidal(0.5, 2, 1)` is:
![alt text](https://github.com/lbussell/audio_tech/blob/master/assignment1/sinusoid.png)

### Generating a Song
- `generateYD(startFrequencyInHz)`
  - Generates and plays part of the tune "Yankee Doodle" starting at the specified frequency.
  - Calls generateSinusoidal() at different frequencies, concatenates the results, and plays at a sample rate of 44100 Hz.
  -  Returns *t*, the time in seconds, and *x*, the generated signal, both as vectors.
- The result of calling `generateYD(440)` is stored in YD.wav (https://github.com/lbussell/audio_tech/blob/master/assignment1/YD.wav)
  - Alternatively, calling `generateYD(x)` will generate and play another YD.wav (the old one will be overwritten)
- The parameter `startFrequencyInHz` will change the note that the sequence starts at.
  - For example, calling `generateYD(554.37)` will result in the melody starting on C# (a major third higher than A=440Hz)

Bonus: Why do you hear clicks/pops in the generated melody?

### Generating Sawtooth Waves

- Sawtooth waves can be approximated by adding together sines of increasing harmonics from the fundamental frequency,
  - Starting the sine with a phase of zero, and adjusting the amplitudes with 1/i, i being the harmonic index.

- `generateSawtooth(amplitude, frequencyInHz, lengthInS)`
  - Approximates a sawtooth wave with the 20 lowest harmonics.
  - Returns *t*, the time in seconds, and *x*, the generated signal, both as vectors.
- The result of plotting `generateSawtooth(0.5, 2, 1)` is:
![alt text](https://github.com/lbussell/audio_tech/blob/master/assignment1/sawtooth.png) 
