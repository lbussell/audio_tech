Assignment 2: Level
======

### Main
- Plots the RMS and Peaks of both audio files, in both raw values and dBFS (sample size of 2048).
  - Calls `BlockedIntensity()` and `dBFS()`
![plot](https://github.com/lbussell/audio_tech/blob/master/assignment2/plot.png)

The RMS plots have the same general shape as the peak plots because when the signal peaks and the RMS should be roughly to the scale of each other. The first two plots are more accentuated and are from a scale of -1 to 1 but the peaks graph has greater values as opposed to the rms values. The next to graphs are converted to dBFS and for the most part none of the values exceed zero because max for dBFS is zero. Any values exceeding zero are peaks. The two peaks graphs and the two RMS graphs have roughly the same shape because they are the same values at a different scale. Overall across all the grapes the wave forms are roughly the same shape. The big difference between them is the information we look at in each graph (RMS vs  peaks) and the scale at which they are viewed (dBFS vs raw values from -1 to 1).
  
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
  - We determined that the dBFS implementation is correct because the formula we used is the inverse of the RMS formula.

### Blocked Intensity
- `BlockedIntensity(x)`
  - Splits a signal into blocks of 2048 samples
  - Returns two vectors
    - `rms_block`, the RMS of each block of samples (calls `myRms()`)
    - `peak_block`, the Peak of each block of samples (calls `myPeak()`)
  - We checked for accuracy by manually dividing the sample audio into blocks of 2048 and making sure the lengths of the resulting vectors were the same.
