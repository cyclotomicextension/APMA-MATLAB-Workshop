
clear; clc; close all; 

%% PHASE 1: THE SITUATION ROOM (Vectors & Indexing)
%  Goal: Initialize county data and learn Column Vectors vs Row Vectors

fprintf('--- PHASE 1: INITIALIZING RI DATA ---\n');

% 1. Define County Populations (Zombies)
%    Order: [Providence; Kent; Washington; Bristol; Newport]
%    TODO: Create a COLUMN vector with values: 1000, 50, 10, 0, 5
zombie_pop = [___]; 

% 2. Indexing: Update specific counties
%    TODO: Double the infection count in Washington County (3rd element)
zombie_pop(3) = ___ * 2; 

% 3. Basic Stats
%    TODO: Calculate sum and find the maximum value
total_threat = sum(___);
[max_zombies, worst_county_idx] = max(___);

fprintf('Total Zombies in RI: %d\n', total_threat);
fprintf('Worst County Index: %d (Count: %d)\n\n', worst_county_idx, max_zombies);

%4. Save zombie population matrix
%   TODO: Save edited zombie_pop for next phase
save("____.mat", '__')