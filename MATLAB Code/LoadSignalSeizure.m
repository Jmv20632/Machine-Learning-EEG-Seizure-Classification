function [signal_output,time_output] = LoadSignalSeizure(signal_name,time_start_seizure,time_end_seizure,Fs)
%LOADSIGNAL Loads EEG Signal and Segments Portion of Seizure
%   Detailed explanation goes here

% Sample Value Initilization
time_end_load=time_end_seizure+2;
sample_end_load=Fs*time_end_load;
sample_start_seizure=(time_start_seizure*Fs)+1;
sample_end_seizure=(time_end_seizure*Fs)+1;

[signal,Fs_signal,time]=rdsamp(signal_name,[],sample_end_load);

%Check that Fs is correct
if Fs~=Fs_signal
    disp('Incorrect Fs')
    return
end

% Isolate CZ_PZ Channels
signal_channel_CZ_PZ=signal(:,18);

% Isolate Seizure
signal_output=signal_channel_CZ_PZ(sample_start_seizure:sample_end_seizure);

%Set Up Time Variable
seizure_duration=time_end_seizure-time_start_seizure;
sample_size_signal=length(signal_output);

time_output=linspace(0,seizure_duration,sample_size_signal);
time_output=time_output';
end

