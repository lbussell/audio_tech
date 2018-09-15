Assignment 2: Level
======

### Main
- Plots the RMS and Peaks of both audio files, in both raw values and dBFS (sample size of 2048).
  - Calls `BlockedIntensity()` and `dBFS()`
![plot](https://github.com/lbussell/audio_tech/blob/master/assignment2/plot.png)
  
### Finding RMS
- `myRms(samplevector)`
  - Returns the root mean square (one value) of the signal block given in samplevector.
    - RMS (root mean square) can be found by summing the square of each element in the block, dividing by the total number of elements in the block, and then taking the square root of the resulting value.
  - We can check for accuracy by comparing with Matlab's built-in `rms()` function.

### Finding Peaks
- `myPeak(samplevector)`
  - Returns the absolute maximum (one value) of the signal block given in samplevector.
    - We can use Matlab's built-in `max()` function to help us achieve this, and also to check ourselves against.
      - Any custom implementation would have similar or worse time complexity, compromising on efficiency.
      
### Calculating dBFS
- `dBFS(value)`
  - Converts raw signal into dB (full scale)

### Blocked Intensity
- `BlockedIntensity(x)`
  - Splits a signal into blocks of 2048 samples
  - Returns two vectors
    - `rms_block`, the RMS of each block of samples (calls `myRms()`)
    - `peak_block`, the Peak of each block of samples (calls `myPeak()`)
