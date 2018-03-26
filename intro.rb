#intro
use_bpm 60

1.times do
  sample :perc_bell, beat_stretch: 20, amp: 0.2
  sleep 0.55
end
3.times do
  sample :bd_boom, beat_stretch: 2
  sleep 0.25
end
3.times do
  sample :ambi_choir, beat_stretch: 30, amp: 10
  sleep 0.6
end
