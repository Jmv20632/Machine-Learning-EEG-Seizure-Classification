function [output_features] = SignalFeatures(signal,string_description)
%SIGNALFEATURES Summary of this function goes here
%   Detailed explanation goes here
length_signal=length(signal);
size_signal=size(signal);
n=numel(signal);

number_of_segments=size_signal(:,2);

% Check for Array in Proper Dimesions
if number_of_segments==length_signal
    disp('Flip Signal Dimensions')
    return
end

%output_features_temp=zeros(number_of_segments,6);

%First Feature - Mean
%output_features_temp(:,1)=mean(signal)';
Mean=mean(signal)';
%Second Feature - Zero-Crossing Rate
%output_features_temp(:,2)=zerocrossrate(signal)';
ZeroCrossingRate=zerocrossrate(signal)';
%Third Feature - Variance
%output_features_temp(:,3)=var(signal)';
Variance=var(signal)';
%Fourth Feature - RMS
%output_features_temp(:,4)=rms(signal)';
RMS=rms(signal)';
% Fifth Feature - Mean Spectral Entropy
%output_features_temp(:,5)=mean(spectralEntropy(signal,256))';
MeanSpectralEntropy=mean(spectralEntropy(signal,256))';
% Label
if strcmp('Normal',string_description)
    %output_features_temp(:,6)=0;
    str_temp={'Normal'};
elseif strcmp('Seizure',string_description)
    %output_features_temp(:,6)=1;
    str_temp={'Seizure'};
else
    disp('String Needs to be either Normal or Seizure')
end

EEGState=cell(number_of_segments,1);

for i=1:number_of_segments
    EEGState(i)=str_temp;
end

%disp(EEGState)

output_features=table(Mean,ZeroCrossingRate,Variance,RMS,MeanSpectralEntropy,EEGState);
end

