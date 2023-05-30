use_bpm 100  # Adjust the tempo
use_synth :piano # use different synths
use_synth_defaults attack: 0.3, sustain: 0.5, release: 0.3  # Adjust synth parameters
# Define the key and scale
define :my_key do |root, scale_type|
  return scale(root, scale_type)
end
define :classical_progression do
  return [:C3, :F5, :G5, :C6]  # Example classical progression
end

define :jazz_progression do
  return [:C3, :Eb4, :A3, :D4]  # Example jazz progression
end
define :play_chords do |progression|
  progression.each do |chord|
    play chord, release: 4
    sleep 3
  end
end
define :play_chords do |progression|
  progression.each do |chord|
    play chord, release: 4
    sleep 3
  end
end
# Play classical chord progression
play_chords classical_progression

# Play jazz chord progression
play_chords jazz_progression

define :play_melody do |notes|
  notes.each do |note|
    play note
    sleep 0.8
  end
end

# Play a classical melody
play_melody [:C4, :D4, :E4, :D4, :C4]

# Play a jazz improvisation
play_melody scale(:C4, :bayati_araban)

define :play_rhythm do |notes, durations|
  notes.zip(durations).each do |note, duration|
    play note, release: duration
    sleep duration
  end
end

# Play a classical rhythm
play_rhythm [:C4, :E4, :G4], [0.3, 0.3, 1]

# Play a jazz rhythm with syncopation
play_rhythm [:C4, :E4, :G4, :B4], [0.25, 0.25, 0.5, 0.25]
