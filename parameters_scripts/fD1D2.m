function features= fD1D2 (signal)

%mfccDelta
aFED1 = audioFeatureExtractor( ...
    "SampleRate",fs, ...
    "Window",hamming(round(0.03*fs),"periodic"), ...
    "OverlapLength",round(0.02*fs), ...
    "mfccDelta",true);

featuresD1 = extract(aFED1,signal);


mfD1 = mean(featuresD1);
mdD1 = median(featuresD1);
maD1 = max(featuresD1);
miD1= min(featuresD1);
mstD1 = std(featuresD1);
mskD1 = skewness(featuresD1);
mkD1 = kurtosis(featuresD1);


% %mfccDeltaDelta
aFED2 = audioFeatureExtractor( ...
    "SampleRate",fs, ...
    "Window",hamming(round(0.03*fs),"periodic"), ...
    "OverlapLength",round(0.02*fs), ...
    "mfccDeltaDelta",true);

featuresD2 = extract(aFED2,signal);


mfD2 = mean(featuresD2);
mdD2 = median(featuresD2);
maD2 = max(featuresD2);
miD2= min(featuresD2);
mstD2 = std(featuresD2);
mskD2 = skewness(featuresD2);
mkD2 = kurtosis(featuresD2);

features= [mfD1 mdD1 maD1 miD1 mstD1 mskD1 mkD1 mfD2 mdD2 maD2 miD2 mstD2 mskD2 mkD2];

end