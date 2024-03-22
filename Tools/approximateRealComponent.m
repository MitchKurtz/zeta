function [realOutput, sumVal, limitVal] = approximateRealComponent(inputVal, numSteps)
% Uses diffrence between the summation and limit as given on page 30 of my notes
limitVal = approximateRealComponent_Limit(inputVal, numSteps);
sumVal = approximateRealComponent_Summation(inputVal, numSteps);

realOutput = limitVal+sumVal;

end


