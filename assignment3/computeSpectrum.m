function [f, XAbs, XPhase, XRe, XIm] = computeSpectrum(x, sampleRateInHz)

    lengthX = length(x);
    numberOfSeconds = ceil(lengthX/sampleRateInHz);
    
    numberOfSamples = 2^(nextpow2(length(x)));
    
    ft = fft(x, numberOfSamples); % take the fft of the signal
    ft = ft(1:numberOfSamples/2); % get rid of redundant half
    
    f = 0:sampleRateInHz/length(ft):sampleRateInHz/2;
    XRe = real(ft);
    XIm = imag(ft);
    XAbs = abs(ft);
    XPhase = angle(ft);
    
end