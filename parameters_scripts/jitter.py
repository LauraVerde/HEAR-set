import parselmouth
import numpy as np
from scipy.io import savemat



def jitter(name):
    sound = parselmouth.Sound(name)
    pitch = sound.to_pitch()
    pulses = parselmouth.praat.call([sound, pitch], "To PointProcess (cc)")
    voice_report_str = parselmouth.praat.call([sound, pitch, pulses], "Voice report", 0.0, 0.0, 75, 600, 1.3, 1.6, 0.03,
                                              0.45)
    jitter_local = parselmouth.praat.call(pulses, "Get jitter (local)", 0.0, 0.0, 0.0001, 0.02, 1.3) * 100
    return jitter_local


if __name__ == '__main__':
    filename = 'path'
    ji=jitter(filename)
    print(ji)

    #save jitter value as file.mat ('jitter.mat')
    savemat('jitter.mat', {'jitter_value': ji})



