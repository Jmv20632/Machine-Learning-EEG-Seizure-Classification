function [output_array] = SignalSegmentation(seconds_per_segment,input_signal)
%SIGNALSEGMENTATION Summary of this function goes here
%   Detailed explanation goes here
max_time_seconds=30;
Fs=256;



%Time Safety Check
if seconds_per_segment>max_time_seconds
    disp('Keep Seconds Per Segment Under 30 Seconds')
    return
end

%Segmentation
segment_number=max_time_seconds/seconds_per_segment;
segment_sample=seconds_per_segment*(Fs);

output_array=zeros(segment_sample,segment_number);

for i=1:segment_number
    output_array(1:segment_sample+1,i)=input_signal(((i-1)*segment_sample)+1:((i)*segment_sample)+1);
end


end

