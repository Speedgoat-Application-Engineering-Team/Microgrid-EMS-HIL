function switchConfig(mdl, SimConfig)
if SimConfig == 'HIL'
    SimConfig_val = 1;
elseif SimConfig == 'MIL'
    SimConfig_val = 0;
else
    SimConfig_val = 0;
    disp('Warning................');
    disp('The Simulation config should be either ''MIL'' or ''HIL''');
    disp('Otherwise, it will be treated as ''MIL'' as default');
    disp('.......................');
end

load_system('microgrid_ESS');
BlockSim = getfullname(Simulink.findBlocks(mdl,'Name','SimulationSelection'));
set_param(BlockSim,'Value',num2str(SimConfig_val));


