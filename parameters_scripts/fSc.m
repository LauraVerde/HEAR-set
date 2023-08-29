function features= fSc (signal)

%spectral centroid
aFEsc = audioFeatureExtractor( ...
    "SampleRate",fs, ...
    "Window",hamming(round(0.03*fs),"periodic"), ...
    "OverlapLength",round(0.02*fs), ...
    "spectralCentroid",true);

featuresSc = extract(aFEsc,signal);


mfSc = mean(featuresSc);
mdSc = median(featuresSc);
maSc = max(featuresSc);
miSc= min(featuresSc);
mstSc = std(featuresSc);
mskSc = skewness(featuresSc);
mkSc = kurtosis(featuresSc);

features= [mfSc mdSc maSc miSc mstSc mskSc mkSc]

end