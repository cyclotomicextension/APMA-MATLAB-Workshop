%% PHASE 3: THE FIELD HOSPITAL (Scope & Inputs)
%  Goal: Use loops and pass data into functions.

fprintf('--- PHASE 3: MEDICAL RESPONSE ---\n');

% --- SCENARIO A: The Vaccination Drive (FOR LOOP) ---
clinics = [1, 2, 3]; 
risk_level = 0.3; 

fprintf('Status: Inspecting Clinics...\n');

% TODO: Write a FOR loop that iterates k from 1 to length(clinics)
for k = ___:___
    
    % TODO: Call the local function 'inspect_clinic_safety'.
    % IMPORTANT: You MUST pass 'k' and 'risk_level' as inputs!
    is_safe = inspect_clinic_safety(___, ___); 
    
    if is_safe
        fprintf('  Clinic %d: SECURE.\n', k);
    else
        fprintf('  Clinic %d: COMPROMISED.\n', k);
    end
end
fprintf('\n');

% --- SCENARIO B: The ER Overflow (WHILE LOOP) ---
patients = 200;
supplies = 500;
hour = 0;

fprintf('Status: ER Crisis Mode Starting...\n');

% TODO: Write a WHILE loop. Keep going as long as patients > 0 AND supplies > 0
while ___ > 0 && ___ > 0
    hour = hour + 1;
    
    % TODO: Call 'treat_batch_of_patients' passing 'supplies' as input
    [cured_count, used_supplies] = treat_batch_of_patients(___);
    
    % Update State (Subtract cured from patients, used from supplies)
    patients = patients - cured_count;
    supplies = supplies - used_supplies; 
    
    fprintf('  Hour %d: Patients: %d | Supplies: %d\n', hour, patients, supplies);
end

check_mission_status(patients); 
fprintf('\n');

%% --- LOCAL FUNCTIONS ---
%  (Scroll down! Logic is defined here)

% Function 1: Takes Input (clinic_id, threshold) -> Returns Boolean
function is_secure = inspect_clinic_safety(id, threshold)
    % NOTE: This function cannot see 'risk_level' from the main script.
    % It only knows 'threshold' because we passed it in.
    
    random_val = rand();
    
    if random_val > threshold
        is_secure = true;
    else
        % We can use the 'id' input to print specific errors
        fprintf('    [ALERT]: Breach detected at Site #%d.\n', id);
        is_secure = false;
    end
end

% Function 2: Takes Input (medicine_available) -> Returns [cured, cost]
function [cured, cost] = treat_batch_of_patients(medicine_available)
    % We limit the treatment based on medicine available
    
    max_capacity = 40; % Max people we can treat per hour
    cost_per_person = 2; % 2 vials per person
    
    % Randomly determine how many people show up (0 to 40)
    people_waiting = floor(rand() * max_capacity);
    
    % Check if we have enough medicine
    cost = people_waiting * cost_per_person;
    
    if cost > medicine_available
        % Not enough medicine! Treat only what we can.
        cured = floor(medicine_available / cost_per_person);
        cost = medicine_available; 
    else
        cured = people_waiting;
    end
end

% Function 3: Reporting helper
function check_mission_status(patients_remaining)
    if patients_remaining == 0
        disp('  Result: SUCCESS. All patients discharged.');
    else
        disp('  Result: FAILURE. Supplies exhausted.');
    end
end