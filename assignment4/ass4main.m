% 2. [5] generate a noise signal x of length 44100 samples
% (use the Matlab function randn)

% 3. [15] filter your noise signal x with alpha = 0.99 and 
% compute the difference to the output of Matlab's filter function 
% (b = (1-alpha), a = [1   -alpha]. 
% Plot and discuss the difference.

    % Note: if your difference is not negligible,
    % use the filter function instead of your implementation for the 
    % questions 4-6.

% 4. [10] filter the audio signal cathy_2.wav with the different 
% coefficients alpha = 0.5, 0.9, 0.99, 0.999.
% Plot the results.

% 5. [15] Discuss the differences between the output signals.
% Use both the plots and your auditory perception for this discussion.

% 6. [10] Use the function freqz((1-alpha), [1  -alpha],1024,44100)
% to plot your magnitude and phase responses for alpha = 0.9, 0.99. 
% Determine the cutoff frequencies graphically from both plots (zoom in). 
% Discuss the shape of the phase response and speculate on its impact 
% on the output.

% 7. [10] What happens if you set alpha > 1? Why? Explain.

% 9. [10] Implement the 2nd order filter above 'manually' without the 
% filter function. Compare your function outputs with the output of
% question 8 and verify correct implementation.