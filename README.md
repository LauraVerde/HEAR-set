# HEAR-set
A ligHtwEight Acoustic paRameter set 

Version (1.0.0)

The HEAR set is a set of available acoustic parameters useful for assessing voice quality in subjects with mental disorders, highlighting early signs of these disorders and supporting their correct medical diagnosis. The acoustic parameter set consists of jitter analysis, spectral centroid, Mel-frequency cepstral coefficients (MFCC), and their derivatives. 

The aim is to provide researchers with a fast and reliable acoustic parameter set to support their studies on voice processing and early diagnosis of specific disorders.


## Structure of the repository

The repository contains the folder [parameters_scripts](https://github.com/LauraVerde/HEAR-set/tree/main/parameters_scripts) which includes scripts to extract acoustic parameters. It consists of:\
-[fD1D2.m](https://github.com/LauraVerde/HEAR-set/blob/main/parameters_scripts/fD1D2.m): script to extract MFCC derivates;\
-[fMfcc](https://github.com/LauraVerde/HEAR-set/blob/main/parameters_scripts/fMfcc.m): script to extract MFCC;\
-[fSc](https://github.com/LauraVerde/HEAR-set/blob/main/parameters_scripts/fSc.m): script to extract spectral centroid parameter; and\
-[jitter](https://github.com/LauraVerde/HEAR-set/blob/main/parameters_scripts/jitter.py): script to extract jitter parameter.



## Credits

This toolkit is build using Matlab R2023a, licensed to Università della Campania "Luigi Vanvitelli"upon the following software libraries. The tools use the Audio Toolbox (v.3.4).
Additionnaly, the Python library "praat-parselmouth" (v.0.4.3) is used.


## License

The software is licensed according to requirements of [NASA OPEN SOURCE AGREEMENT VERSION 1.3](https://javapathfinder.sourceforge.net/NOSA-1.3-JPF.txt).
