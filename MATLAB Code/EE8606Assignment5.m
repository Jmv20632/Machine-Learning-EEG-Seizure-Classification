%% Assignment #5
%% 5 Seizure Signal Loading from PhysioNet for Training
[signal_01_21_seizure,time_01_21_seizure]=LoadSignalSeizure('chbmit/chb01/chb01_21.edf',327,420,256);
[signal_01_15_seizure,time_01_15_seizure]=LoadSignalSeizure('chbmit/chb01/chb01_15.edf',1732,1772,256);
[signal_02_16_seizure,time_02_16_seizure]=LoadSignalSeizure('chbmit/chb02/chb02_16.edf',130,212,256);
[signal_03_01_seizure,time_03_01_seizure]=LoadSignalSeizure('chbmit/chb03/chb03_01.edf',362,414,256);
[signal_03_02_seizure,time_03_02_seizure]=LoadSignalSeizure('chbmit/chb03/chb03_02.edf',731,796,256);
%% 5 Normal Signal Loading from PhysioNet for Training
[signal_01_02_normal,time_01_02_normal]=LoadSignalNormal('chbmit/chb01/chb01_02.edf',256);
[signal_01_05_normal,time_01_05_normal]=LoadSignalNormal('chbmit/chb01/chb01_05.edf',256);
[signal_02_01_normal,time_02_01_normal]=LoadSignalNormal('chbmit/chb02/chb02_01.edf',256);
[signal_02_03_normal,time_02_03_normal]=LoadSignalNormal('chbmit/chb02/chb02_03.edf',256);
[signal_03_05_normal,time_03_05_normal]=LoadSignalNormal('chbmit/chb03/chb03_05.edf',256);
%% Loading Signals from .mat
load('WorkspaceSignals10N10S.mat')
%% Signal Clipping for Epilepsy Signals & Signal Labelling 
% Goal is to clip so that all signals are the same size as normal signals
time_signal=time_01_02_normal;
% Epilepsy Signal Clipping
epilepsy_signal_1=signal_01_21_seizure(1:7681);
epilepsy_signal_2=signal_01_15_seizure(1:7681);
epilepsy_signal_3=signal_02_16_seizure(1:7681);
epilepsy_signal_4=signal_03_01_seizure(1:7681);
epilepsy_signal_5=signal_03_02_seizure(1:7681);
epilepsy_signal_6=signal_09_08_seizure(1:7681);
epilepsy_signal_7=signal_10_12_seizure(1:7681);
epilepsy_signal_8=signal_05_06_seizure(1:7681);
epilepsy_signal_9=signal_05_13_seizure(1:7681);
epilepsy_signal_10=signal_08_02_seizure(1:7681);
% Label Normal Signals
normal_signal_1=signal_01_02_normal;
normal_signal_2=signal_01_05_normal;
normal_signal_3=signal_02_01_normal;
normal_signal_4=signal_02_03_normal;
normal_signal_5=signal_03_05_normal;
normal_signal_6=signal_04_01_normal;
normal_signal_7=signal_05_01_normal;
normal_signal_8=signal_06_02_normal;
normal_signal_9=signal_07_01_normal;
normal_signal_10=signal_08_03_normal;
%% Signal Segmentation #1 3 Seconds
epilepsy_segments_1_3_seconds=SignalSegmentation(3,epilepsy_signal_1);
epilepsy_segments_2_3_seconds=SignalSegmentation(3,epilepsy_signal_2);
epilepsy_segments_3_3_seconds=SignalSegmentation(3,epilepsy_signal_3);
epilepsy_segments_4_3_seconds=SignalSegmentation(3,epilepsy_signal_4);
epilepsy_segments_5_3_seconds=SignalSegmentation(3,epilepsy_signal_5);
epilepsy_segments_6_3_seconds=SignalSegmentation(3,epilepsy_signal_6);
epilepsy_segments_7_3_seconds=SignalSegmentation(3,epilepsy_signal_7);
epilepsy_segments_8_3_seconds=SignalSegmentation(3,epilepsy_signal_8);
epilepsy_segments_9_3_seconds=SignalSegmentation(3,epilepsy_signal_9);
epilepsy_segments_10_3_seconds=SignalSegmentation(3,epilepsy_signal_10);

normal_segments_1_3_seconds=SignalSegmentation(3,normal_signal_1);
normal_segments_2_3_seconds=SignalSegmentation(3,normal_signal_2);
normal_segments_3_3_seconds=SignalSegmentation(3,normal_signal_3);
normal_segments_4_3_seconds=SignalSegmentation(3,normal_signal_4);
normal_segments_5_3_seconds=SignalSegmentation(3,normal_signal_5);
normal_segments_6_3_seconds=SignalSegmentation(3,normal_signal_6);
normal_segments_7_3_seconds=SignalSegmentation(3,normal_signal_7);
normal_segments_8_3_seconds=SignalSegmentation(3,normal_signal_8);
normal_segments_9_3_seconds=SignalSegmentation(3,normal_signal_9);
normal_segments_10_3_seconds=SignalSegmentation(3,normal_signal_10);
%% Signal Segmentation #2 10 Seconds
epilepsy_segments_1_10_seconds=SignalSegmentation(10,epilepsy_signal_1);
epilepsy_segments_2_10_seconds=SignalSegmentation(10,epilepsy_signal_2);
epilepsy_segments_3_10_seconds=SignalSegmentation(10,epilepsy_signal_3);
epilepsy_segments_4_10_seconds=SignalSegmentation(10,epilepsy_signal_4);
epilepsy_segments_5_10_seconds=SignalSegmentation(10,epilepsy_signal_5);
epilepsy_segments_6_10_seconds=SignalSegmentation(10,epilepsy_signal_6);
epilepsy_segments_7_10_seconds=SignalSegmentation(10,epilepsy_signal_7);
epilepsy_segments_8_10_seconds=SignalSegmentation(10,epilepsy_signal_8);
epilepsy_segments_9_10_seconds=SignalSegmentation(10,epilepsy_signal_9);
epilepsy_segments_10_10_seconds=SignalSegmentation(10,epilepsy_signal_10);

normal_segments_1_10_seconds=SignalSegmentation(10,normal_signal_1);
normal_segments_2_10_seconds=SignalSegmentation(10,normal_signal_2);
normal_segments_3_10_seconds=SignalSegmentation(10,normal_signal_3);
normal_segments_4_10_seconds=SignalSegmentation(10,normal_signal_4);
normal_segments_5_10_seconds=SignalSegmentation(10,normal_signal_5);
normal_segments_6_10_seconds=SignalSegmentation(10,normal_signal_6);
normal_segments_7_10_seconds=SignalSegmentation(10,normal_signal_7);
normal_segments_8_10_seconds=SignalSegmentation(10,normal_signal_8);
normal_segments_9_10_seconds=SignalSegmentation(10,normal_signal_9);
normal_segments_10_10_seconds=SignalSegmentation(10,normal_signal_10);

%% Feature Extraction Method #1a - Time & Frequency Based 3 Seconds (5 Signals)
n_3_second_1_features=SignalFeatures(normal_segments_1_3_seconds,'Normal');
n_3_second_2_features=SignalFeatures(normal_segments_2_3_seconds,'Normal');
n_3_second_3_features=SignalFeatures(normal_segments_3_3_seconds,'Normal');
n_3_second_4_features=SignalFeatures(normal_segments_4_3_seconds,'Normal');
n_3_second_5_features=SignalFeatures(normal_segments_5_3_seconds,'Normal');
s_3_second_1_features=SignalFeatures(epilepsy_segments_1_3_seconds,'Seizure');
s_3_second_2_features=SignalFeatures(epilepsy_segments_2_3_seconds,'Seizure');
s_3_second_3_features=SignalFeatures(epilepsy_segments_3_3_seconds,'Seizure');
s_3_second_4_features=SignalFeatures(epilepsy_segments_4_3_seconds,'Seizure');
s_3_second_5_features=SignalFeatures(epilepsy_segments_5_3_seconds,'Seizure');

feature_extraction_3_seconds_5_signals=vertcat(n_3_second_1_features,n_3_second_2_features,n_3_second_3_features,n_3_second_4_features,n_3_second_5_features,s_3_second_1_features,s_3_second_2_features,s_3_second_3_features,s_3_second_4_features,s_3_second_5_features);

%% Feature Extraction Method #1b - Time & Frequency Based 10 Seconds (5 Signals)
n_10_second_1_features=SignalFeatures(normal_segments_1_10_seconds,'Normal');
n_10_second_2_features=SignalFeatures(normal_segments_2_10_seconds,'Normal');
n_10_second_3_features=SignalFeatures(normal_segments_3_10_seconds,'Normal');
n_10_second_4_features=SignalFeatures(normal_segments_4_10_seconds,'Normal');
n_10_second_5_features=SignalFeatures(normal_segments_5_10_seconds,'Normal');
s_10_second_1_features=SignalFeatures(epilepsy_segments_1_10_seconds,'Seizure');
s_10_second_2_features=SignalFeatures(epilepsy_segments_2_10_seconds,'Seizure');
s_10_second_3_features=SignalFeatures(epilepsy_segments_3_10_seconds,'Seizure');
s_10_second_4_features=SignalFeatures(epilepsy_segments_4_10_seconds,'Seizure');
s_10_second_5_features=SignalFeatures(epilepsy_segments_5_10_seconds,'Seizure');

feature_extraction_10_seconds_5_signals=vertcat(n_10_second_1_features,n_10_second_2_features,n_10_second_3_features,n_10_second_4_features,n_10_second_5_features,s_10_second_1_features,s_10_second_2_features,s_10_second_3_features,s_10_second_4_features,s_10_second_5_features);

%% Feature Extraction Method #1c - Time & Frequency Based 3 Seconds
n_3_second_1_features=SignalFeatures(normal_segments_1_3_seconds,'Normal');
n_3_second_2_features=SignalFeatures(normal_segments_2_3_seconds,'Normal');
n_3_second_3_features=SignalFeatures(normal_segments_3_3_seconds,'Normal');
n_3_second_4_features=SignalFeatures(normal_segments_4_3_seconds,'Normal');
n_3_second_5_features=SignalFeatures(normal_segments_5_3_seconds,'Normal');
n_3_second_6_features=SignalFeatures(normal_segments_6_3_seconds,'Normal');
n_3_second_7_features=SignalFeatures(normal_segments_7_3_seconds,'Normal');
n_3_second_8_features=SignalFeatures(normal_segments_8_3_seconds,'Normal');
n_3_second_9_features=SignalFeatures(normal_segments_9_3_seconds,'Normal');
n_3_second_10_features=SignalFeatures(normal_segments_10_3_seconds,'Normal');

s_3_second_1_features=SignalFeatures(epilepsy_segments_1_3_seconds,'Seizure');
s_3_second_2_features=SignalFeatures(epilepsy_segments_2_3_seconds,'Seizure');
s_3_second_3_features=SignalFeatures(epilepsy_segments_3_3_seconds,'Seizure');
s_3_second_4_features=SignalFeatures(epilepsy_segments_4_3_seconds,'Seizure');
s_3_second_5_features=SignalFeatures(epilepsy_segments_5_3_seconds,'Seizure');
s_3_second_6_features=SignalFeatures(epilepsy_segments_6_3_seconds,'Seizure');
s_3_second_7_features=SignalFeatures(epilepsy_segments_7_3_seconds,'Seizure');
s_3_second_8_features=SignalFeatures(epilepsy_segments_8_3_seconds,'Seizure');
s_3_second_9_features=SignalFeatures(epilepsy_segments_9_3_seconds,'Seizure');
s_3_second_10_features=SignalFeatures(epilepsy_segments_10_3_seconds,'Seizure');

feature_extraction_3_seconds_10_signals=vertcat(n_3_second_1_features,n_3_second_2_features,n_3_second_3_features,n_3_second_4_features,n_3_second_5_features,n_3_second_6_features,n_3_second_7_features,n_3_second_8_features,n_3_second_9_features,n_3_second_10_features,s_3_second_1_features,s_3_second_2_features,s_3_second_3_features,s_3_second_4_features,s_3_second_5_features,s_3_second_6_features,s_3_second_7_features,s_3_second_8_features,s_3_second_9_features,s_3_second_10_features);

%% Feature Extraction Method #1d - Time & Frequency Based 10 Seconds
n_10_second_1_features=SignalFeatures(normal_segments_1_10_seconds,'Normal');
n_10_second_2_features=SignalFeatures(normal_segments_2_10_seconds,'Normal');
n_10_second_3_features=SignalFeatures(normal_segments_3_10_seconds,'Normal');
n_10_second_4_features=SignalFeatures(normal_segments_4_10_seconds,'Normal');
n_10_second_5_features=SignalFeatures(normal_segments_5_10_seconds,'Normal');
n_10_second_6_features=SignalFeatures(normal_segments_6_10_seconds,'Normal');
n_10_second_7_features=SignalFeatures(normal_segments_7_10_seconds,'Normal');
n_10_second_8_features=SignalFeatures(normal_segments_8_10_seconds,'Normal');
n_10_second_9_features=SignalFeatures(normal_segments_9_10_seconds,'Normal');
n_10_second_10_features=SignalFeatures(normal_segments_10_10_seconds,'Normal');

s_10_second_1_features=SignalFeatures(epilepsy_segments_1_10_seconds,'Seizure');
s_10_second_2_features=SignalFeatures(epilepsy_segments_2_10_seconds,'Seizure');
s_10_second_3_features=SignalFeatures(epilepsy_segments_3_10_seconds,'Seizure');
s_10_second_4_features=SignalFeatures(epilepsy_segments_4_10_seconds,'Seizure');
s_10_second_5_features=SignalFeatures(epilepsy_segments_5_10_seconds,'Seizure');
s_10_second_6_features=SignalFeatures(epilepsy_segments_6_10_seconds,'Seizure');
s_10_second_7_features=SignalFeatures(epilepsy_segments_7_10_seconds,'Seizure');
s_10_second_8_features=SignalFeatures(epilepsy_segments_8_10_seconds,'Seizure');
s_10_second_9_features=SignalFeatures(epilepsy_segments_9_10_seconds,'Seizure');
s_10_second_10_features=SignalFeatures(epilepsy_segments_10_10_seconds,'Seizure');

feature_extraction_10_seconds_10_signals=vertcat(n_10_second_1_features,n_10_second_2_features,n_10_second_3_features,n_10_second_4_features,n_10_second_5_features,n_10_second_6_features,n_10_second_7_features,n_10_second_8_features,n_10_second_9_features,n_10_second_10_features,s_10_second_1_features,s_10_second_2_features,s_10_second_3_features,s_10_second_4_features,s_10_second_5_features,s_10_second_6_features,s_10_second_7_features,s_10_second_8_features,s_10_second_9_features,s_10_second_10_features);

%% Feature Extraction Method #2a - Signal Decomposition Based 3 Seconds 5 Signals
n_3_second_1_features_SD=SignalDecompositionFeatures(normal_segments_1_3_seconds,'Normal');
n_3_second_2_features_SD=SignalDecompositionFeatures(normal_segments_2_3_seconds,'Normal');
n_3_second_3_features_SD=SignalDecompositionFeatures(normal_segments_3_3_seconds,'Normal');
n_3_second_4_features_SD=SignalDecompositionFeatures(normal_segments_4_3_seconds,'Normal');
n_3_second_5_features_SD=SignalDecompositionFeatures(normal_segments_5_3_seconds,'Normal');
s_3_second_1_features_SD=SignalDecompositionFeatures(epilepsy_segments_1_3_seconds,'Seizure');
s_3_second_2_features_SD=SignalDecompositionFeatures(epilepsy_segments_2_3_seconds,'Seizure');
s_3_second_3_features_SD=SignalDecompositionFeatures(epilepsy_segments_3_3_seconds,'Seizure');
s_3_second_4_features_SD=SignalDecompositionFeatures(epilepsy_segments_4_3_seconds,'Seizure');
s_3_second_5_features_SD=SignalDecompositionFeatures(epilepsy_segments_5_3_seconds,'Seizure');

feature_extraction_SD_3_seconds_5_signals=vertcat(n_3_second_1_features_SD,n_3_second_2_features_SD,n_3_second_3_features_SD,n_3_second_4_features_SD,n_3_second_5_features_SD,s_3_second_1_features_SD,s_3_second_2_features_SD,s_3_second_3_features_SD,s_3_second_4_features_SD,s_3_second_5_features_SD);

%% Feature Extraction Method #2b - Signal Decomposition Based 10 Seconds 5 Signals
n_10_second_1_features_SD=SignalDecompositionFeatures(normal_segments_1_10_seconds,'Normal');
n_10_second_2_features_SD=SignalDecompositionFeatures(normal_segments_2_10_seconds,'Normal');
n_10_second_3_features_SD=SignalDecompositionFeatures(normal_segments_3_10_seconds,'Normal');
n_10_second_4_features_SD=SignalDecompositionFeatures(normal_segments_4_10_seconds,'Normal');
n_10_second_5_features_SD=SignalDecompositionFeatures(normal_segments_5_10_seconds,'Normal');
s_10_second_1_features_SD=SignalDecompositionFeatures(epilepsy_segments_1_10_seconds,'Seizure');
s_10_second_2_features_SD=SignalDecompositionFeatures(epilepsy_segments_2_10_seconds,'Seizure');
s_10_second_3_features_SD=SignalDecompositionFeatures(epilepsy_segments_3_10_seconds,'Seizure');
s_10_second_4_features_SD=SignalDecompositionFeatures(epilepsy_segments_4_10_seconds,'Seizure');
s_10_second_5_features_SD=SignalDecompositionFeatures(epilepsy_segments_5_10_seconds,'Seizure');

feature_extraction_SD_10_seconds_5_signals=vertcat(n_10_second_1_features_SD,n_10_second_2_features_SD,n_10_second_3_features_SD,n_10_second_4_features_SD,n_10_second_5_features_SD,s_10_second_1_features_SD,s_10_second_2_features_SD,s_10_second_3_features_SD,s_10_second_4_features_SD,s_10_second_5_features_SD);

%% Feature Extraction Method #2c - Signal Decomposition Based 3 Seconds 10 Signals
n_3_second_1_features_SD=SignalDecompositionFeatures(normal_segments_1_3_seconds,'Normal');
n_3_second_2_features_SD=SignalDecompositionFeatures(normal_segments_2_3_seconds,'Normal');
n_3_second_3_features_SD=SignalDecompositionFeatures(normal_segments_3_3_seconds,'Normal');
n_3_second_4_features_SD=SignalDecompositionFeatures(normal_segments_4_3_seconds,'Normal');
n_3_second_5_features_SD=SignalDecompositionFeatures(normal_segments_5_3_seconds,'Normal');
n_3_second_6_features_SD=SignalDecompositionFeatures(normal_segments_6_3_seconds,'Normal');
n_3_second_7_features_SD=SignalDecompositionFeatures(normal_segments_7_3_seconds,'Normal');
n_3_second_8_features_SD=SignalDecompositionFeatures(normal_segments_8_3_seconds,'Normal');
n_3_second_9_features_SD=SignalDecompositionFeatures(normal_segments_9_3_seconds,'Normal');
n_3_second_10_features_SD=SignalDecompositionFeatures(normal_segments_10_3_seconds,'Normal');

s_3_second_1_features_SD=SignalDecompositionFeatures(epilepsy_segments_1_3_seconds,'Seizure');
s_3_second_2_features_SD=SignalDecompositionFeatures(epilepsy_segments_2_3_seconds,'Seizure');
s_3_second_3_features_SD=SignalDecompositionFeatures(epilepsy_segments_3_3_seconds,'Seizure');
s_3_second_4_features_SD=SignalDecompositionFeatures(epilepsy_segments_4_3_seconds,'Seizure');
s_3_second_5_features_SD=SignalDecompositionFeatures(epilepsy_segments_5_3_seconds,'Seizure');
s_3_second_6_features_SD=SignalDecompositionFeatures(epilepsy_segments_6_3_seconds,'Seizure');
s_3_second_7_features_SD=SignalDecompositionFeatures(epilepsy_segments_7_3_seconds,'Seizure');
s_3_second_8_features_SD=SignalDecompositionFeatures(epilepsy_segments_8_3_seconds,'Seizure');
s_3_second_9_features_SD=SignalDecompositionFeatures(epilepsy_segments_9_3_seconds,'Seizure');
s_3_second_10_features_SD=SignalDecompositionFeatures(epilepsy_segments_10_3_seconds,'Seizure');

feature_extraction_SD_3_seconds_10_signals=vertcat(n_3_second_1_features_SD,n_3_second_2_features_SD,n_3_second_3_features_SD,n_3_second_4_features_SD,n_3_second_5_features_SD,n_3_second_6_features_SD,n_3_second_7_features_SD,n_3_second_8_features_SD,n_3_second_9_features_SD,n_3_second_10_features_SD,s_3_second_1_features_SD,s_3_second_2_features_SD,s_3_second_3_features_SD,s_3_second_4_features_SD,s_3_second_5_features_SD,s_3_second_6_features_SD,s_3_second_7_features_SD,s_3_second_8_features_SD,s_3_second_9_features_SD,s_3_second_10_features_SD);

%% Feature Extraction Method #2d - Signal Decomposition Based 10 Seconds 10 Signals
n_10_second_1_features_SD=SignalDecompositionFeatures(normal_segments_1_10_seconds,'Normal');
n_10_second_2_features_SD=SignalDecompositionFeatures(normal_segments_2_10_seconds,'Normal');
n_10_second_3_features_SD=SignalDecompositionFeatures(normal_segments_3_10_seconds,'Normal');
n_10_second_4_features_SD=SignalDecompositionFeatures(normal_segments_4_10_seconds,'Normal');
n_10_second_5_features_SD=SignalDecompositionFeatures(normal_segments_5_10_seconds,'Normal');
n_10_second_6_features_SD=SignalDecompositionFeatures(normal_segments_6_10_seconds,'Normal');
n_10_second_7_features_SD=SignalDecompositionFeatures(normal_segments_7_10_seconds,'Normal');
n_10_second_8_features_SD=SignalDecompositionFeatures(normal_segments_8_10_seconds,'Normal');
n_10_second_9_features_SD=SignalDecompositionFeatures(normal_segments_9_10_seconds,'Normal');
n_10_second_10_features_SD=SignalDecompositionFeatures(normal_segments_10_10_seconds,'Normal');

s_10_second_1_features_SD=SignalDecompositionFeatures(epilepsy_segments_1_10_seconds,'Seizure');
s_10_second_2_features_SD=SignalDecompositionFeatures(epilepsy_segments_2_10_seconds,'Seizure');
s_10_second_3_features_SD=SignalDecompositionFeatures(epilepsy_segments_3_10_seconds,'Seizure');
s_10_second_4_features_SD=SignalDecompositionFeatures(epilepsy_segments_4_10_seconds,'Seizure');
s_10_second_5_features_SD=SignalDecompositionFeatures(epilepsy_segments_5_10_seconds,'Seizure');
s_10_second_6_features_SD=SignalDecompositionFeatures(epilepsy_segments_6_10_seconds,'Seizure');
s_10_second_7_features_SD=SignalDecompositionFeatures(epilepsy_segments_7_10_seconds,'Seizure');
s_10_second_8_features_SD=SignalDecompositionFeatures(epilepsy_segments_8_10_seconds,'Seizure');
s_10_second_9_features_SD=SignalDecompositionFeatures(epilepsy_segments_9_10_seconds,'Seizure');
s_10_second_10_features_SD=SignalDecompositionFeatures(epilepsy_segments_10_10_seconds,'Seizure');

feature_extraction_SD_10_seconds_10_signals=vertcat(n_10_second_1_features_SD,n_10_second_2_features_SD,n_10_second_3_features_SD,n_10_second_4_features_SD,n_10_second_5_features_SD,n_10_second_6_features_SD,n_10_second_7_features_SD,n_10_second_8_features_SD,n_10_second_9_features_SD,n_10_second_10_features_SD,s_10_second_1_features_SD,s_10_second_2_features_SD,s_10_second_3_features_SD,s_10_second_4_features_SD,s_10_second_5_features_SD,s_10_second_6_features_SD,s_10_second_7_features_SD,s_10_second_8_features_SD,s_10_second_9_features_SD,s_10_second_10_features_SD);


%% Additional Data
[signal_04_01_normal,time_04_01_normal]=LoadSignalNormal('chbmit/chb04/chb04_01.edf',256);
[signal_05_01_normal,time_05_01_normal]=LoadSignalNormal('chbmit/chb05/chb05_01.edf',256);
[signal_06_02_normal,time_06_02_normal]=LoadSignalNormal('chbmit/chb06/chb06_02.edf',256);
[signal_07_01_normal,time_07_01_normal]=LoadSignalNormal('chbmit/chb07/chb07_01.edf',256);
[signal_08_03_normal,time_08_03_normal]=LoadSignalNormal('chbmit/chb08/chb08_03.edf',256);
%% Additional Data
[signal_09_08_seizure,time_09_08_seizure]=LoadSignalSeizure('chbmit/chb09/chb09_08.edf',2951,3030,256);
[signal_10_12_seizure,time_10_12_seizure]=LoadSignalSeizure('chbmit/chb10/chb10_12.edf',6313,6348,256);
[signal_05_06_seizure,time_05_06_seizure]=LoadSignalSeizure('chbmit/chb05/chb05_06.edf',417,532,256);
[signal_05_13_seizure,time_05_13_seizure]=LoadSignalSeizure('chbmit/chb05/chb05_13.edf',1086,1196,256);
[signal_08_02_seizure,time_08_02_seizure]=LoadSignalSeizure('chbmit/chb08/chb08_02.edf',2670,2841,256);