%% Create slivuner and confiurate it 

%Create slivuner interface
TunedBlocks = {'PD1','PD2', 'PD3'};
ST0 = slTuner('DOF3_PD', TunedBlocks);

% Mark outputs of PID blocks as plant inputs
addPoint(ST0, TunedBlocks);

% Mark joint angles as plant outputs
addPoint(ST0, 'Robot/qm');
%Mark reference signals
RefSignals = {'DOF3_PD/Signal Genrator/q1', 'DOF3_PD/Signal Genrator/q2', 'DOF3_PD/Signal Genrator/q3'};
addPoint(ST0,RefSignals)

%% Defining Input and Outputs and Tuning the system

Controls = TunedBlocks; 
% actuator commands
Measurements = 'DOF3_PD/Robot/qm'; 
% joint angle measurements
options = looptuneOptions('RandomStart',80', 'UseParallel', false); % For
TR= TuningGoal.StepTracking(RefSignals, Measurements, 0.05, 0);
ST1 = looptune(ST0, Controls, Measurements,TR, options);
%% Update PID Block
writeBlockValue (ST1)