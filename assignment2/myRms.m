function [res] = myRms(samplevector)
% Returns the root mean square of the signal block given in samplevector.
res = sqrt(sum(samplevector.^2)/length(samplevector));
end