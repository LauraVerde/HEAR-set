function features= hear (file)

[filepath,name,ext] = fileparts(file)
[signal,fs] = audioread(file);


% %estimate MFCC
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



features= [mf md ma mi mst msk mk mfSc mdSc maSc miSc mstSc mskSc mkSc mfD1 mdD1 maD1 miD1 mstD1 mskD1 mkD1 mfD2 mdD2 maD2 miD2 mstD2 mskD2 mkD2];


end

ellevrd
Sol24\_lau