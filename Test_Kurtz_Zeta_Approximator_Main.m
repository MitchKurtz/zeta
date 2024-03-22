%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculates the Kurtz Zeta Approximation at various values and compares the results to the output of Matlab's Zeta Function
% Note that the Kurtz Zeta Aproximation is only valid for real(testInputValues) > 0.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To see how the accuracy of the approximation changes vs number of steps,
% see display_kurtz_zeta_approximation_error_vs_num_discrete_steps.m;
% In general,
% 1.) As real(testInputValues) increases, the accuracy of the approximation increases
% 2.) As the number of steps used in the approximation increases, the accuracy of the approximation increases in a damped harmonic logarithmic fashion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('./Tools')
clc;clear;format long g
testInputValues= {};
testInputValues{1,1} = 4.3 + 24234i;
testInputValues{2,1} = 3.2 + 57i;
testInputValues{3,1} = 2 + 0i;
testInputValues{4,1} = 1.4235 + 5.2456i;
testInputValues{5,1} = 0.95 + 1203i;
testInputValues{6,1} = 0.852352 + 0.0025489i;
testInputValues{7,1} = 0.7 + 52.6i;
testInputValues{8,1} = 0.5 + 14.1347251417346937904572519835625i;
testInputValues{9,1} = 0.4 - 0.2352i;
testInputValues{10,1} = 0.3 + 0.2532i;

for ind = 1:size(testInputValues,1)
    inputValue = testInputValues{ind,1};

    % Calculate and display Zeta Funciton Calculation with matlab 
    matlabZetaVal = zeta(inputValue);
    
    % Calculate Zeta Function Using Kurtz Approximation (Defaults to 5000000 steps)
    kurtzZetaCalculation = kurtzZetaApproximation(inputValue);
    
    
    fprintf('------------------------------------------------------------------\n')
    fprintf('Calculating Zeta of %f + (%f)i\n', real(inputValue), imag(inputValue))
    fprintf('Matlabs Zeta Calculation = %f + (%f) i \n', real(matlabZetaVal), imag(matlabZetaVal))
    fprintf('Kurtz Zeta Approximation = %f + (%f) i \n', real(kurtzZetaCalculation),imag(kurtzZetaCalculation))

end

