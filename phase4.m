
clear; clc; close all; 

%% PHASE 4: SATELLITE SCAN (Vectorization)
%  Goal: Process large arrays instantly (No Loops)

fprintf('--- PHASE 4: SATELLITE THERMAL SCAN ---\n');

% 1. Simulate 100x100 thermal grid
thermal_map = rand(100, 100) * 100;

% 2. Create Mask: Zombies are Cold (< 10 deg)
%    TODO: Create a Logical Array (True/False) where thermal_map < 10
zombie_mask = ___;

% 3. Count instantly
%    TODO: Sum all the 'True' values in zombie_mask
total_detected = sum(___, 'all');

fprintf('Satellite Scan Complete. Cold Signatures: %d\n\n', total_detected);

% FIGURE 1: Thermal Heatmap
figure(1);
imagesc(thermal_map);        % Draw the data
colormap('hot');             % Set colors to Red/Yellow heat
colorbar;                    % Show the scale
title('Satellite Thermal Scan');
xlabel('X Coordinates'); ylabel('Y Coordinates');

% FIGURE 2: Target Mask (Black & White)
figure(2);
imagesc(zombie_mask);        % Draw the logical array (0=Black, 1=White)
colormap('gray');            % Set colors to Black/White
title('Target Identification (Cold Signatures < 10)');
xlabel('X Coordinates'); ylabel('Y Coordinates');