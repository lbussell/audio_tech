function [outputVector] = myConv(inputSignalVector, impulseResponseVector)

impulseResponseVector = flipud(impulseResponseVector);

impulseLength = length(impulseResponseVector);
inputLength = length(inputSignalVector);

outputVector = zeros(inputLength + impulseLength, 0);

impulseZeros = zeros(inputLength-1, 0);
inputZeros = zeros(impulseLength-1, 0);

for n = 1:length(outputVector)
    for m = 0:inputLength
        outputVector(n,0) = ;
    end
end

end