# Welcome to Sonic Pi v2.11.1
live_loop :drums do
  puts "slow drums"
  3.times do
    sample :sound_in, rate: 0.7
    sleep 0.4
  end
  
  puts "slow drums"
  3.times do
    sample :bd_boom, rate: 0.72
    sleep 0.125
  end
end
puts "slow drums"
3.times do
  sample :ambi_choir, rate: 0.7
  sleep 0.5
end
end
live_loop :synths, delay: 6 do
  puts "how does it feel?"
  use_synth :mod_beep
  use_synth_defaults amp: 0.7, attack: 0, sustain: 1, release: 0.25, mod_range: 12, mod_phase: 0.5, mod_invert_wave: 2
  notes = (ring  :D, :C, :F, :D, :G, :C,:D, :D)
  notes.each do |n|
    tick
    play note(n, octave: 1), cutoff: (line 90, 130, steps: 16).look
    play note(n, octave: 2), cutoff: (line 90, 130, steps: 32).look
    sleep 1
  end
  live_loop:drum do
    sample:drum_cymbal_closed, amp: -1
    sleep 1
  end
  