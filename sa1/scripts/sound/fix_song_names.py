import os

for song in os.listdir('sound/sa1/songs/midi/non_matching'):
    new_song = song.replace("song0", "song")
    print(song, new_song)
    os.rename('sound/sa1/songs/midi/non_matching/' + song, 'sound/sa1/songs/midi/non_matching/' + new_song)
    
