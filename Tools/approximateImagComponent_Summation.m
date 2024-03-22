function sumVal = approximateImagComponent_Summation(inputVal, numSteps)
% Calculate the discrete Summation as given on page 37 of my notes
x = real(inputVal);
t = imag(inputVal);
numStepsVect = 1:numSteps;
vals = -1*sin(t.*log(numStepsVect)) ./ (numStepsVect.^x);
sumVal = sum(vals(:));