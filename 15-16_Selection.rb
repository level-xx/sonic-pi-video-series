use_bpm 90

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
  use_synth :bass_highend
  use_synth_defaults amp: 0.4
  16.times do
    play 52, sustain: 1
    sleep 1
  end
  8.times do
    play 50, sustain: 1
    sleep 1
  end
end