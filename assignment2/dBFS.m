function [res] = dBFS(value)
% Converts a magnitude into dBFS
res = 20*log10(value * sqrt(2));
end