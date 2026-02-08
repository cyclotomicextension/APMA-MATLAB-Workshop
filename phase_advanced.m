fprintf('--- PHASE ADVANCED: Visualize the terrain ---\n');
% 1. Define grid vectors
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);

% 2. Build the coordinate grid
[X, Y] = meshgrid(x, y);

% 3. Compute Infection Surface (two overlapping hotspots)
Z = 40 * exp(-((X).^2 + (Y).^2)) + 10 * exp(-((X-4).^2 + (Y-4).^2));

% 4. Plot the terrain
figure;
surf(X, Y, Z); 
colorbar; 
title('Infection Density Surface'); xlabel('East-West'); ylabel('North-South'); 
zlabel('Threat Level');

% 5. Locate safe zones
figure;
contourf(X, Y, Z, 15); 
colorbar; 
title('Extraction Zone Map'); xlabel('East-West');  ylabel('North-South');
fprintf('Prediction Complete. Check Figures.\n');