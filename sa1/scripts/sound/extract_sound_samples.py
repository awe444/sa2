import os

directory = "sound/sa1/direct_sound_samples"
for filename in os.listdir(directory):
    if filename.endswith('.bin'):
        filepath = directory + "/" + filename
        print('Extracting', filepath)
        os.system('./tools/aif2pcm/aif2pcm ' + filepath)
