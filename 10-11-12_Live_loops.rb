live_loop :bassline do
    sample :drum_heavy_kick
    sleep 1
    sample :sn_generic
    sleep 1.5
    sample :drum_heavy_kick
    sleep 0.5
    sample :sn_generic
    sleep 1
  end
  
  live_loop :lead do
    use_synth :winwood_lead
    play 52, sustain: 2
    sleep 1
  end