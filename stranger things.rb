use_bpm 150
#first notes
use_synth:saw
with_fx :octaver do
  play 40
  4. times do
    play:c2
    sleep 0.5
    play:e2
    sleep 0.5
    play:g2
    sleep 0.5
    play:b2
    sleep 0.5
    #second measure
    play:c3
    sleep 0.5
    play:b2
    sleep 0.5
    play:g2
    sleep 0.5
    play:e2
    sleep 0.5
  end
end
#third set of notes
play:c1
play:a1
sleep 0.5
play:e2
sleep 0.5
play:g2
sleep 0.5
play:b2
sleep 0.5