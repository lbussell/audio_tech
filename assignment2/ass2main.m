a = [1,-4.019576181115830,6.189406442920687,-4.453198903544109,1.420842949621874,-0.141825473830304,0.004351177233495];
b = [0.255741125204258,-0.511482250408518,-0.255741125204251,1.022964500817026,-0.255741125204258,-0.511482250408514,0.255741125204258];

[xs, fs] = audioread('serato_bigband.wav');
x = sum(xs, 2) / size(xs, 2);
x_a = filter(b,a,x);
sound(x, fs);

rms_x = myRms(x);
rms_x_a = myRms(x_a);

peak_x = myPeak(x);
peak_x_a = myPeak(x_a);

[x_rms_block, x_peak_block] = BlockedIntensity(x);
[xa_rms_block, xa_peak_block] = BlockedIntensity(x_a);

x_rms_dBFS = dBFS(x_rms_block);
xa_rms_dBFS = dBFS(xa_rms_block);

x_peak_dBFS = dBFS(x_peak_block);
xa_peak_dBFS = dBFS(xa_peak_block);

% Calculate times for x-axis (in seconds)
tshort = 0 : 1/fs    : length(x)           * 1/fs    - 1/fs;
tlong = 0  : 2048/fs : length(x_rms_block) * 2048/fs - 2048/fs;

% (i) Plot audio (x)
subplot(5,1,1);
plot(tshort, x);
title('Source Audio')
xlabel('Time (s)');
ylabel('Amplitude');

% (ii) Plot rms
subplot(5,1,2);
plot(tlong, x_rms_block);
hold on
plot(tlong, xa_rms_block);
title('RMS values of original and filtered audio')
legend('Original', 'Filtered');
xlabel('Time (s)');
ylabel('RMS');

% (iii) Plot peaks
subplot(5,1,3);
plot(tlong, x_peak_block);
hold on
plot(tlong, xa_peak_block);
title('Peak values of original and filtered audio')
legend('Original', 'Filtered');
xlabel('Time (s)');
ylabel('Peak');

% (iv) Plot dBFS rms
subplot(5,1,4);
hold on
plot(tlong, x_rms_dBFS);
plot(tlong, xa_rms_dBFS);
title('RMS of original and filtered audio (in dBFS)')
legend('Original', 'Filtered');
xlabel('Time (s)');
ylabel('dBFS');

% (v) Plot dBFS peak
subplot(5,1,5);
plot(tlong, x_peak_dBFS);
hold on
plot(tlong, xa_peak_dBFS);
title('Peak values of original and filtered audio (in dBFS)');
legend('Original', 'Filtered')
xlabel('Time (s)');
ylabel('dBFS');

% Discuss the plots. What is different, what is common? Why?