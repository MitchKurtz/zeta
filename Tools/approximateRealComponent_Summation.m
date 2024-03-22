function sumVal = approximateRealComponent_Summation(inputVal, numSteps)
% Calculate the discrete Summation as given on page 30 of my notes
x = real(inputVal);
t = imag(inputVal);
numStepsVect = 1:numSteps;
vals = cos(t.*log(numStepsVect)) ./ (numStepsVect.^x);
sumVal = sum(vals(:));