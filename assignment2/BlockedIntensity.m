function [rms_block, peak_block] = BlockedIntensity(x)
% Splits up vector into blocks of samples
% Returns RMS and Peak of each of the blocks in a vector
blockSize = 2048;
rms_block = 0;
peak_block = 0;

% Make sure the last, possibly incomplete block is processed with zeros
zerosToAdd = zeros(2048 - mod(length(x), blockSize), 1);
x = [x
    zerosToAdd];

for n = 0:ceil(length(x)/blockSize)-1
    startIndex = n * blockSize + 1;
    endIndex = n * blockSize + blockSize;
    rms_block = [rms_block myRms(x(startIndex:endIndex))];
    peak_block = [peak_block myPeak(x(startIndex:endIndex))];
end

end