sampleRate = 44100;
samplePeriod = 1 / sampleRate;

t = 0 + samplePeriod : samplePeriod : 1;

% 2. [5] generate a noise signal x of length 44100 samples
% (use the Matlab function randn)

x = randn(size(t));

% 3. [15] filter your noise signal x with alpha = 0.99 and 
% compute the difference to the output of Matlab's filter function 
% (b = (1-alpha), a = [1   -alpha]. 
% Plot and discuss the difference.

% b is input weight, a is output weight
alpha = 0.99;
xFiltered = mySinglePole(x, alpha);
xMatlabFiltered = filter(1 - alpha, alpha, x);

difference = xFiltered - xMatlabFiltered;

figure(1);

subplot(3,1,1);
hold on
title('Single Pole Filter (custom implementation)');
plot(t, xFiltered);
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
hold on
title('Matlab''s filter()');
plot(t, xMatlabFiltered);
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
hold on
title('Difference');
plot(t, difference);
xlabel('Time (s)');
ylabel('Amplitude');

    % Note: if your difference is not negligible,
    % use the filter function instead of your implementation for the 
    % questions 4-6.

% 4. [10] filter the audio signal cathy_2.wav with the different 
% coefficients alpha = 0.5, 0.9, 0.99, 0.999.
% Plot the results.

[cathy, fs] = audioread('cathy_2.wav');
length_cath_s = length(cathy) / sampleRate;
t_cath = 0 + samplePeriod : samplePeriod : length_cath_s;

figure(2)
% cath_05 = filter(1 - 0.5, 0.5, cathy);
% cath_09 = filter(1 - 0.9, 0.9, cathy);
% cath_099 = filter(1 - 0.99, 0.99, cathy);
% cath_0999 = filter(1 - 0.999, 0.999, cathy);
cath_05 = mySinglePole(cathy, 0.5);
cath_09 = mySinglePole(cathy, 0.9);
cath_099 = mySinglePole(cathy, 0.99);
cath_0999 = mySinglePole(cathy, 0.999);

subplot(4,1,1);
plot(t_cath, cath_05);
ylim([-1,1]);
legend("\alpha = 0.5");
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,2);
plot(t_cath, cath_09);
ylim([-1,1]);
legend("\alpha = 0.9");
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,3);
plot(t_cath, cath_099);
ylim([-1,1]);
legend("\alpha = 0.99");
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,4);
plot(t_cath, cath_0999);
ylim([-1,1]);
legend("\alpha = 0.999");
xlabel('Time (s)');
ylabel('Amplitude');

% 5. [15] Discuss the differences between the output signals.
% Use both the plots and your auditory perception for this discussion.

% 6. [10] Use the function freqz((1-alpha), [1  -alpha],1024,44100)
% to plot your magnitude and phase responses for alpha = 0.9, 0.99. 
% Determine the cutoff frequencies graphically from both plots (zoom in). 
% Discuss the shape of the phase response and speculate on its impact 
% on the output.
[h1, w1] = freqz((1 - 0.9), [1 -0.9], 1024, 44100); % cutoff = ~775 hz
[h2, w2] = freqz((1 - 0.99), [1 -0.99], 1024, 44100); % cutoff = ~77.5 hz

db1 = mag2db(abs(h1));
db2 = mag2db(abs(h2));

cutoff1 = interp1(db1,w1,-3);
cutoff2 = interp1(db2,w2,-3);

figure(3);

subplot(2, 1, 1);
semilogx(w1, db1);
hold on
plot(cutoff1, -3, 'x');
xlabel('Frequency (Hz)');
ylabel('dB');
legend("\alpha = 0.9", "Cutoff Frequency");

subplot(2, 1, 2);
semilogx(w2, db2);
hold on
plot(cutoff2, -3, 'x');
legend("\alpha = 0.99", "Cutoff Frequency");
xlabel('Frequency (Hz)');
ylabel('dB');

% 7. [10] What happens if you set alpha > 1? Why? Explain.

% Filter your noise and audio signal 
% (freq = 3000, Q = 4, gain = 12). Verify and discuss the output.

noisePeak = myPeak(x, 3000, 4, 12, fs);
cathyPeak = myPeak(cathy, 3000, 4, 12, fs);

figure(4);

subplot(4, 1, 1);
plot(t_cath, cathy);

subplot(4, 1, 2);
plot(t_cath, cathyPeak);

subplot(4, 1, 3);
plot(t, x);

subplot(4, 1, 4);
plot(t, noisePeak);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(5);

% generate a delta pulse
delta = zeros(1, 1024);
delta(1) = intmax;
deltaFFT = fft(delta);

% filter and compute the fft of the delta pulse
deltaFiltered1 = myPeak(delta, 500, 4, 12, fs);
deltaFiltered2 = myPeak(delta, 1000, 4, 12, fs);
deltaFiltered3 = myPeak(delta, 3000, 4, 12, fs);
deltaFiltered4 = myPeak(delta, 8000, 4, 12, fs);
filteredFFT1 = fft(deltaFiltered1);
filteredFFT2 = fft(deltaFiltered2);
filteredFFT3 = fft(deltaFiltered3);
filteredFFT4 = fft(deltaFiltered4);

% plot 
subplot(4,1,1);
hold on
plot(abs(filteredFFT1));
legend("Filter @ 500 Hz");

subplot(4,1,2);
hold on
plot(abs(filteredFFT2));
legend("Filter @ 1000 Hz");

subplot(4,1,3);
hold on
plot(abs(filteredFFT3));
legend("Filter @ 3000 Hz");

subplot(4,1,4);
hold on
plot(abs(filteredFFT4));
legend("Filter @ 8000 Hz");

% 9. [10] Implement the 2nd order filter above 'manually' without the 
% filter function. Compare your function outputs with the output of
% question 8 and verify correct implementation.