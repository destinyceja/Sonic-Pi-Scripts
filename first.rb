# Married Life - Michael Ginacho
#https://musescore.com/user/1596896/scores/715646
#first
use_bpm 135
use_synth:piano
use_synth_defaults cutoff: rrand(60, 100)
song_vocals ="C:/Users/destiny_ceja/Desktop/thing1.wav"
my_array = [:f5,:a5,:f5,:e5,:r,:f5,:a5,:f5,:d5,:r,:d5,:f5,:d5,:c5]# all of my notes are placed in an array
my_sleeps = [0.5, 0.5, 0.5, 0.5, 0.5, 4, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 2]
live_loop :song_vocals do
  2.times do
    sample song_vocals
    sleep 8.8
  end
  live_loop :up do
    index = 0 #this is important because it is telling the computer to start from the first note/sleep provided in the array.
    15.times do
      play my_array[index]
      index = index + 1 #this is what allows the following note in both of the arrways to change to the corresponding note/sleep in the array.
      sleep my_sleeps[index]
    end
  end
end
