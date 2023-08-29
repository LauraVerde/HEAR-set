function features= fMfcc (signal)

% estimate MFCC
aFE = audioFeatureExtractor( ...
    "SampleRate",fs, ...
    "Window",hamming(round(0.03*fs),"periodic"), ...
    "OverlapLength",round(0.02*fs), ...
    "mfcc",true);

featuresMfcc = extract(aFE,signal);


mf = mean(featuresMfcc);
md = median(featuresMfcc);
ma = max(featuresMfcc);
mi= min(featuresMfcc);
mst = std(featuresMfcc);
msk = skewness(featuresMfcc);
mk = kurtosis(featuresMfcc);

features= [mf md ma mi mst msk mk];

end