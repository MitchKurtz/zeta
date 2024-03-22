function limitVal = approximateImagComponent_Limit(inputVal, numSteps)
% Calculate the limit as given on page 30 of my notes

x = real(inputVal);
t = imag(inputVal);
% calculate denominator of limit
limitVal = (numSteps/( ((numSteps+1)^x)*((x-1)^2 +t^2) )) * ( -t*cos(t*log(numSteps+1)) +(1-x)*sin(t*log(numSteps+1)) );