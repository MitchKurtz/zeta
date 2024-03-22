% This Script plots the accuracy of the Kurtz Zeta Approximation as a function of the number of steps used for the calculation
addpath('./Tools');clc;clear;format long g;

testVal = 0.7 + 10i; % Change this to the value you want to test
numStepsVect =1:1:10000; % Change this to the step sizes you want to test over

realOutputVect =zeros(1,size(numStepsVect,2));
imagOutputVect =zeros(1,size(numStepsVect,2));

matlabZetaVal = zeta(testVal);
truthReal = real(matlabZetaVal);
truthImag = imag(matlabZetaVal);

count = 0;
for numSteps =numStepsVect
    count = count+1;
    kurtzZetaCalculation = kurtzZetaApproximation(testVal,numSteps);
    realOutputVect(1,count) = real(kurtzZetaCalculation);
    imagOutputVect(1,count) = imag(kurtzZetaCalculation);
end

realError = truthReal - realOutputVect;
imagError = truthImag - imagOutputVect;

realTruthVect = truthReal*ones(size(realOutputVect));
imagTruthVect = truthImag*ones(size(imagOutputVect));

figure(2)
subplot(2,2,1)
hold off
plot(numStepsVect,realOutputVect, 'DisplayName','Kurtz Approximation');
hold on 
plot(numStepsVect,realTruthVect, 'DisplayName','Matlab Zeta Function');
title(strcat("Real Kurtz Calculated Value vs Num Steps"))
xlabel("Number of Steps")
ylabel("Kurtz Approximation Real Output")
legend();

subplot(2,2,2)
plot(numStepsVect, realError)
xlabel("Number of Steps")
ylabel("Real Error")
title("Real Error (Matlab Zeta Function - Kurtz Approximation) ")

subplot(2,2,3)
hold off
plot(numStepsVect,imagOutputVect, 'DisplayName','Kurtz Approximation');
title(strcat("Imag Kurtz Calculated Value vs Num Steps "))
hold on 
plot(numStepsVect,imagTruthVect, 'DisplayName','Matlab Zeta Function');
xlabel("Number of Steps")
ylabel("Kurtz Approximation Imag Output")
legend()

subplot(2,2,4)
plot(numStepsVect, imagError)
xlabel("Number of Steps")
ylabel("Imag Error")
title("Imag Error (Matlab Zeta Calculation - Kurtz Approximation) ")
