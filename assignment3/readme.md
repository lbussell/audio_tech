# Assignment 3: Fourier Transforms


## Generating A Square Wave
`generateSquare()`
- generates a square wave with samplerate = 65536 and writes the output vector into x.
  ![squarewaves](https://github.com/lbussell/audio_tech/blob/master/assignment3/squarewaves.png)

## Computing Spectrum
`computeSpectrum()`
- computes the FFT of the complete input signal vector x and returns the magnitude spectrum `XAbs`, the phase spectrum `XPhase`, the real part `XRe`, and the imaginary part `XIm`.
  - Wave 1 (`220 Hz, Amplitude = 0.5, phase = 0, length = .5 seconds`)
  ![wave1](https://github.com/lbussell/audio_tech/blob/master/assignment3/wave1.png)
  
  - Wave 2 (`220 Hz, Amplitude = 0.5, phase = pi/2, length = .5 seconds`)
  ![wave2](https://github.com/lbussell/audio_tech/blob/master/assignment3/wave2.png)
  
  - Wave 3 (`330 Hz, Amplitude = 0.5, phase = 0, length = .5 seconds`)
  ![wave3](https://github.com/lbussell/audio_tech/blob/master/assignment3/wave3.png)
  
  - Wave 4 (`330 Hz, Amplitude = 0.5, phase = pi/2, length = .5 seconds`)
  ![wave4](https://github.com/lbussell/audio_tech/blob/master/assignment3/wave4.png)
  
  - Log Magnitude Spectrum of Waves 1 and 3
  ![log_magnitude_spectrum](https://github.com/lbussell/audio_tech/blob/master/assignment3/log_magnitude_spectrum.png)
  
### Analysis
- As expected, waves 1 & 2 and waves 3 & 4 have the same absolute magnitude spectrum.
  - We know this should be the case because each pair of waves has the same frequency. The magnitude of the frequency doesn't change with the phase shift.
- The phase spectrum of each waveform has the same range of `3pi/2`. However, on waves 2 and 4 the range is shifted by `-pi/2`, since the waves were generated with a phase of `pi/2`.
- The real and imaginary parts of the FFT alternate behaviors when the phase is shifted by `pi/2`.
- On waves with a phase of 0, the imaginary part appears to be similar to the magnitude of the FFT but negative.
- On waves with a phase of `pi/2`, the real part appears to be similar to the magnitude but with alternating positive and negative values.
- On the log magnitude spectrum graphs, the amplitude decreases as frequency increases, indicating the decrease in loudness across harmonics.

## Computing Convolution
`myFreqConv()`
- computes time domain convolution via multiplication in the frequency domain.

- Using the Matlab implementation and our custom implementation, we can calculate the difference between the two
  ![convolution](https://github.com/lbussell/audio_tech/blob/master/assignment3/convolution.png)
  
  - The differences in the two convolution calculations is incredibly small (in the realm of `10^-15`), which could possibly be attributed to differences in rounding between Matlab's FFT function (likely implemented at a lower level) and the higher level functions we used to achieve a similar result.

## Main
- Plots the first 5ms of 4 square waves with varying frequencies and phases.
  
- Plots the spectrum for each of the generated square waves.

- Plots the log magnitude spectrum of waves 1 and 3.
  
- Plots the convolution of the first five seconds of `cathy_2.wav` with `IR-Basilica_left.wav`
