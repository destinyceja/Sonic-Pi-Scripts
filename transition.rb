#transition
woo = "C:/Users/destiny_ceja/Desktop/woo.wav"
live_loop :drum_beat do
  sample :bd_boom, amp: 2
  sleep 0.5
  sample :bd_boom, amp: 2
  sleep 1.5
  sample :bd_boom, amp: 2
  sleep 2
  sample woo
end
