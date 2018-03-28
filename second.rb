#should I stay or Should I go - the clash
#https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0075589

use_synth:piano
use_bpm 60
#here are all my samples
pluck_noise = "~/Desktop/pluck_noise.wav"
dung = "~/Desktop/dung.wav"
x = "~/Desktop/guitar.wav"
vocals1 = "~/Desktop/vocals1.wav"
vocals2 ="~/Desktop/vocals2.wav"
#an array with the vocals
my_vocals = [vocals1, vocals2]
#my define function has the notes i want to be played and this function willbe called right after
define :firstnotes_intro do
  3.times do
    play :f3
    play :c3
    play :d3
    sleep 0.25
  end
end

firstnotes_intro

define :secondnotes_intro do
  4.times do
    play :g3
    play :c3
    play :d3
    sleep 0.25
  end
end

secondnotes_intro

define :pluck do
  sample pluck_noise, amp:rrand(10, 20)
  sleep 2.3
end

pluck
firstnotes_intro
secondnotes_intro

1.times do
  sample dung, amp:25
end

dung

play :r
sleep 1

live_loop:imes do
  sample x
  sleep 8
end
sleep 8
live_loop :vocals do
  index = 0
  sample my_vocals[index]
  sleep 8
  index = index + 1
  sample my_vocals[index]
  sleep 15
end

