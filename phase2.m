%% PHASE 2: MIGRATION (Matrix Math: A*x)
%  Goal: Predict movement using Linear Algebra (Matrix Multiplication)

% 1. Load zombie population matrix
%   TODO: Load edited zombie_pop for next phase
load("_______.mat")

fprintf('--- PHASE 2: TRACKING MIGRATION ---\n');

%Check to see if loaded data is edited from phase1

% 2. Create Migration Matrix (5x5) provided by Intel
M = [0.90, 0.05, 0.00, 0.00, 0.00; 
     0.10, 0.90, 0.10, 0.00, 0.00; 
     0.00, 0.05, 0.80, 0.10, 0.00; 
     0.00, 0.00, 0.05, 0.90, 0.05; 
     0.00, 0.00, 0.05, 0.00, 0.95];

% 3. Predict Tomorrow's location
%    TODO: Multiply Matrix M by Vector zombie_pop (Hint: Use * not .*)
next_day_pop = ___;

disp('Projected Zombie Count for Tomorrow (By County):');
disp(next_day_pop);