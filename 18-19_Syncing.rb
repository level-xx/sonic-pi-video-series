set_mixer_control! amp: 1, amp_slide: 4
use_bpm 90
use_random_seed 209837

live_loop :bassline do
  sample :drum_heavy_kick
  sleep 1
  sample :sn_generic
  sleep 1.5
  sample :drum_heavy_kick
  sleep 0.25
  if (one_in 2) then
    sample :drum_heavy_kick
  end
  sleep 0.25
  sample :sn_generic
  sleep 1
end

live_loop :lead do
  sync :bassline
  #stop
  use_synth :dsaw
  use_synth_defaults amp: 1
  16.times do
    play 52, sustain: 0.8
    sleep 1
  end
  8.times do
    play 50, sustain: 0.8
    sleep 0.99
  end
end