# Machine-Learning-EEG-Seizure-Classification
Machine Learning and EEG Signals Examination of Machine Learning Models for the Classification of Epileptic Seizures

Main .m file is EE8606Assignment5.m
EEG data gathered using PhysioNet Datasets

ABSTRACT
The capture and interpretation of electroencephalogram (EEG) signals is an important clinical tool that can help in
the diagnosis and treatment of various neurological conditions.
Epilepsy syndrome is a neurological condition where afflicted
individuals suffer from unprovoked random seizures, those being
random electrical activity in the brain. The diagnosis of EEG
signals is a useful tool to the diagnosis of epilepsy and there
is much interest in developing machine learning tools to assist
in the interpretation and classification of seizures from EEG
signals. There are a variety of machine learning frameworks that
have been created to classify seizure EEGs, differing in feature
extraction from using primarily time-domain frequencies to
utilizing signal decomposition techniques, and differing in models
like support vector machines to convolutional neural networks. A
MATLAB implementation was attempted utilizing segmentation
sizes of 3 and 10 seconds as well as utilizing a primarily time and
frequency based feature set and a signal decomposition based feature set. The results of other machine learning frameworks were
successful in differentiating seizures from normal EEG signals.
The MATLAB implementation was also successful generating
high classification accuracy, with logistic regression being the
superior technique and signal decomposition features performing
better with longer signal segments. An observation about the
MATLAB results was that there was a comparably small data
set utilized for testing and validation compared to the results
from literature likely leading to a higher classification accuracy
that may not be present were a larger feature set used.

