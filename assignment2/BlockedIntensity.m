function [rms_block, peak_block] = BlockedIntensity(x)

% 4. [15] Write a function [rms_block,peak_block] = BlockedIntensity(x)
  % that splits the vector x into consecutive blocks of length 2048 samples
  % and that returns a vector with the rms values per block (length equals
  % number of blocks).
  
% Make sure that the last, possibly incomplete block is
  % processed with zeros.
  
% Use your functions myRms, myPeak.

% Describe how you verified the correctness of your implementation.

rms_block = x;
peak_block = x;

end

