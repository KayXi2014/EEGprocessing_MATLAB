# EEGprocessing_MATLAB
EEG signal processing, sleep staging

main file
<stageIdentification.mlx>
input file: mat file containing the eeg data from openBCI, data is stored in a struct, including the multi-channel eeg data and the sampling frequency. Sample input: <OpenBCI_4channel.mat>, <OpenBCI_2channel.mat>

Functions: eeg data extraction, filtering, artifact removal (optional with S-transform, time consuming), spectrum plot, wavelet analysis, bandpower calculation and a prototype sleep staging using threshold.

Function files - located in Functions folder
<eeg_filter.mlx>: a bandpass filter for eeg signal pre-processing
<istran.m> - inverse S-transform funcrtion
<stran.m> - S-tranform function

Optional file
<stageIdentification_clientdata.mlx>
modified original stageIdentification.mlx file, takes data from the client as input.
input file:
eegdata/Sleep1-2channels.mat
eegdarawta/Sleep2-2channels.mat
