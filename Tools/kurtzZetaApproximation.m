function [zetaOutput] = kurtzZetaApproximation(inputVal, numSteps)

if real(inputVal) <=0
    disp("ERROR: The Kurtz Zeta Approximation is only valid for input values with a real component greater than zero! ")
    zetaOutput = 0;
    return
end

if nargin() < 2
    numSteps = 5000000;
end

[realOutput] = approximateRealComponent(inputVal, numSteps);
[imagOutput] = approximateImagComponent(inputVal, numSteps);

zetaOutput = realOutput + imagOutput*i;