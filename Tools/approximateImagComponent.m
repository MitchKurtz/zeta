function [imagOutput, sumVal, limitVal] = approximateImagComponent(inputVal, numSteps)
% Uses diffrence between the summation and limit as given on page 37 of my notes
limitVal = approximateImagComponent_Limit(inputVal, numSteps);
sumVal = approximateImagComponent_Summation(inputVal, numSteps);

imagOutput = limitVal+sumVal;
 
end