
clear; clc; close all; 

%% PHASE 5: THE 30-DAY FORECAST (ODEs)
%  Goal: Solve the SIR Model

fprintf('--- PHASE 5: SIR MODEL PREDICTION ---\n');

% 1. Setup Time and Initial Conditions
tspan = [0 30]; 
y0 = [0.99; 0.01; 0]; % 99% Healthy, 1% Infected, 0% Recovered

% 2. Define Parameters
beta = 0.5; gamma = 0.1;

% 3. Define the System (Anonymous Function)
%    TODO: Complete the dI/dt equation (Line 2)
%    dS/dt = -beta * S * I
%    dI/dt =  beta * S * I - gamma * I
%    dR/dt =                 gamma * I
dydt = @(t, y) [ -beta * y(1) * y(2);               
                  ___ * y(1) * y(2) - ___*y(2);  
                  gamma * y(2) ];                   

% 4. Solve using ODE45
%    TODO: Call ode45(function, time, initial_state)
[t, y] = ode45(___, ___, ___);

% 5. Visualize
figure;
plot(t, y, 'LineWidth', 2);
legend('Susceptible', 'Infected', 'Recovered');
title('Rhode Island Outbreak Prediction');

fprintf('Prediction Complete. Check Figure 1.\n');
