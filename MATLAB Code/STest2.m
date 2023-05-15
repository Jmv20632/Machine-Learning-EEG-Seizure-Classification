function [output_features] = STest2(signal,string_description)
%SIGNALDECOMPOSITIONFEATURES Summary of this function goes here
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

%Take First Six IMFs from Segments
for i=1:number_of_segments
    imf_signal_temp=0;
    residual_signal_temp=0;
    [imf_signal_temp,residual_signal_temp]=emd(signal(:,i),'MaxNumIMF',6);
    Extracted_IMF(i).data=imf_signal_temp;
end

%Feature 1 and 2 Mean and Energy Over First Six IMF
for i=1:number_of_segments
    % Mean Calculation
    mean_temp=mean(Extracted_IMF(i).data);
    mean_temp=abs(mean_temp);
    mean_temp=sum(mean_temp)/6;
    mean_out(i)=mean_temp;
    % Energy Calculation
    sum_temp=sum(abs(Extracted_IMF(i).data));
    sum_out(i)=sum(sum_temp).^2;
end

mean_IMF=mean_out'; % F1
energy_IMF=sum_out'; % F2

% Feature 3 & 4 Mean Instantaneous Frequency and Instantaneous Frequency
% Variation
% Extract IMF 3 as best IMF for Variation
for i=1:number_of_segments
    [hs,f,t,imfinsf,imfinse]=hht(Extracted_IMF(i).data,256);
    IF_IMF1=imfinsf(:,1);
    InstantaneousFrequencyMean(i)=mean(IF_IMF1);
    InstantaneousFrequencyVar(i)=var(IF_IMF1);
end

InstantaneousFrequencyMean=InstantaneousFrequencyMean'; %F3
InstantaneousFrequencyVar=InstantaneousFrequencyVar'; %F4

% Feature 5 CTM Measure
for i=1:number_of_segments
    hilbert_temp=hilbert(Extracted_IMF(i).data);
    hilbert_IMF_1_temp=hilbert_temp(:,1);
    hilbert_IMF_1_temp_real=real(hilbert_IMF_1_temp);
    hilbert_IMF_1_temp_img=imag(hilbert_IMF_1_temp);
    
    r_ctm_temp=ctm_feature(hilbert_IMF_1_temp_real,hilbert_IMF_1_temp_img);
    ctm_area(i)=pi*((r_ctm_temp)^2);
end

ctm_area=ctm_area';

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

output_features=table(mean_IMF,energy_IMF,InstantaneousFrequencyMean,InstantaneousFrequencyVar,ctm_area,EEGState);


end

