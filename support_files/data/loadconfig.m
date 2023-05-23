% Load configuration to the target machine
path_current = pwd;
path_config_file = fileparts(which('config_nwid.nxd'));
cd(path_config_file);
try
% Master   

% Load configuration to the target machine
% Slave
IO752 = sg_IO75X_struct;
IO752.protocol = 'IO752_V2';
IO752.cardid = '2';
IO752.configfiles = '2';
IO752.targetdrive = 'C:';
IO752.configPath = pwd;
IO752.configfile1 = 'config.nxd';
IO752.configfile2 = 'config_nwid.nxd';
sg_IO75X_loadconfig(IO752);      

catch
    fprintf('\nfailed to connect to default target\n');
end
cd(path_current);
clear path_config_file path_current;
