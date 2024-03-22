function limitVal = approximateRealComponent_Limit(inputVal, numSteps)
% Calculate the limit as given on page 30 of my notes

x = real(inputVal);
t = imag(inputVal);
% calculate denominator of limit
limitVal = (numSteps/( ((numSteps+1)^x)*((x-1)^2 +t^2) )) * ( (x-1)*cos(t*log(numSteps+1)) - t*sin(t*log(numSteps+1)) );