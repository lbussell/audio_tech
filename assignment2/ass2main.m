a = [1,-4.019576181115830,6.189406442920687,-4.453198903544109,1.420842949621874,-0.141825473830304,0.004351177233495];
b = [0.255741125204258,-0.511482250408518,-0.255741125204251,1.022964500817026,-0.255741125204258,-0.511482250408514,0.255741125204258];

[xs, fs] = audioread('serato_bigband.wav');
x = sum(xs, 2) / size(xs, 2);
x_a = filter(b,a,x);

rms_x = myRms(x);
rms_x_a = myRms(x_a);

% sound(x_a, fs);

% 6. [15] Add calls to the above functions to your main function.
% Then, add plot commands to display
    % (i) the audio file x,
    % (ii) the rms of both x and x_a in one plot,
    % (iii) the peak of both x and x_a in one plot,
    % (iv) the dBFS of the rms of both x and x_a in one plot,
    % (v) the dBFS of the peak of both x and x_a in one plot.
% Add proper titles and axis labels to all plots.

% 7. [20] Discuss the plots. What is different, what is common? Why?