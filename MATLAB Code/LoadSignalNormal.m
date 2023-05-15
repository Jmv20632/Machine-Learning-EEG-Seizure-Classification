function [signal_output,time_output] = LoadSignalNormal(normal_signal_name,Fs)
%LOADSIGNALNORMAL Loads first 30 seconds of Signals
%   Detailed explanation goes here
time=30;
Fs=256;
sample_size=(time*Fs)+1;

[signal,Fs_signal,time_output]=rdsamp(normal_signal_name,[],sample_size);

% Fs Safety Check
if Fs~=Fs_signal
    disp('Incorrect Fs')
    return
end

%Isolate CZ_PZ Channel
signal_output=signal(:,18);


end



