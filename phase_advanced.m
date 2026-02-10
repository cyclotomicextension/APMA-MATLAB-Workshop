
clear; clc; close all; 

fprintf('--- PHASE ADVANCED: Visualize the terrain ---\n');

% 1. Define grid vectors
x = __ ;
y = __;

% 2. Build the coordinate grid
%    TODO: Use the meshgrid command to finish this. 

% 3. Compute Infection Surface (two overlapping hotspots)
%    First hotspot is located at the origin (intensity 40) and the second one is at (2,2) (intensity 10). 
Z = 40 * exp (-(( X ) .^2 + ( Y ) .^2) ) + 10 * exp ( -(( X - 4 ) .^2 + (Y - 4) .^2) ) ;

% 4. Plot the terrain using surf. 
figure;
______;
colorbar ;
title ( ' Infection Density Surface ') ; xlabel ( ' East - West ') ; ylabel ( ' North - South ') ;
zlabel ( ' Threat Level ') ;

% 5. Locate safe zones using contour or contourf. 
%   TODO: Decide on optimal choice of function and generate the contour with 15 level curves. 
____;% need a figure
____; 
____;% need colors!
title ( ' Extraction Zone Map ') ; xlabel ( ' East - West ') ; ylabel ( ' North - South ') ;
fprintf ( ' Prediction Complete . Check Figures .\ n ') ;
