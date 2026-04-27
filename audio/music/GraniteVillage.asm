Music_GraniteVillage:
	channel_count 4
	channel 1, Music_GraniteVillage_Ch1
	channel 2, Music_GraniteVillage_Ch2
	channel 3, Music_GraniteVillage_Ch3
	channel 4, Music_GraniteVillage_Ch4

Music_GraniteVillage_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
	rest 12
	octave 1
	note F#, 2
	rest 2
	note G#, 2
	rest 6
	duty_cycle 1
	vibrato 0, 1, 1
	note B_, 4
	octave 2
	note E_, 4
	note F#, 8
	rest 8
.mainLoop:
	octave 1
	volume_envelope 7, 8
	tempo 256
	note B_, 12
	note B_, 4
	octave 2
	note C#, 4
	octave 1
	note F#, 8
	rest 16
	volume_envelope 3, 8
	note F#, 10
	rest 4
	note G#, 10
	rest 16
	rest 16
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	note_type 12, 7, 8
	rest 4
	sound_loop 0, .mainLoop

Music_GraniteVillage_Ch2:
	note_type 12, 15, 8
	rest 10
	octave 1
	vibrato 0, 2, 1
	duty_cycle 3
	note B_, 4
	octave 2
	note C#, 4
	note F#, 8
	rest 2
	note A_, 4
	note B_, 8
	rest 8
.mainLoop:
	octave 2
	volume_envelope 8, 8
	duty_cycle 1
	note E_, 12
	note E_, 4
	note F#, 4
	octave 1
	note B_, 8
	rest 16
	volume_envelope 4, 8
	note B_, 10
	rest 4
	octave 2
	note E_, 10
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	note_type 12, 8, 8
	rest 4
	sound_loop 0, .mainLoop

Music_GraniteVillage_Ch3:
	octave 5
	note_type 6, 1, 0
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 16
	note_type 12, 1, 0
	rest 6
	note_type 6, 1, 0
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 16
	note_type 12, 1, 0
	rest 3
	note_type 1, 1, 0
	rest 16
	rest 16
	rest 4
	note_type 6, 1, 0
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 14
	note_type 12, 1, 0
	rest 8
.mainLoop:
	note_type 6, 1, 0
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 13
	note_type 12, 1, 0
	rest 4
	note_type 6, 1, 0
	note F#, 16
	note A_, 8
	note B_, 9
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 16
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	rest 1
	note_type 1, 1, 0
	rest 6
	note_type 12, 1, 0
	rest 4
	note_type 6, 2, 0
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 16
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	note_type 1, 1, 0
	rest 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 3, 0
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 16
	note_type 12, 1, 0
	rest 4
	note_type 6, 3, 0
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 16
	octave 6
	note G#, 16
	note_type 12, 1, 0
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 7
	sound_loop 0, .mainLoop

Music_GraniteVillage_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 11
	octave 5
	drum_note 1, 1
	drum_speed 6
	toggle_noise
	toggle_noise 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 4
	drum_speed 12
	rest 16
	rest 1
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	rest 1
	drum_speed 1
	rest 2
	drum_speed 6
	rest 1
	drum_speed 1
	rest 10
	drum_speed 12
	rest 8
.mainLoop:
	octave 5
	toggle_noise
	toggle_noise 1
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 8
	drum_speed 12
	rest 3
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 8
	drum_speed 1
	rest 16
	rest 8
	drum_speed 12
	rest 8
	drum_speed 6
	drum_note 1, 1
	drum_note 3, 1
	drum_note 5, 1
	drum_note 3, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 8
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 3, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 4
	drum_speed 1
	rest 12
	drum_speed 12
	rest 8
	drum_speed 6
	drum_note 3, 4
	drum_speed 12
	rest 12
	drum_speed 6
	drum_note 3, 4
	drum_speed 12
	rest 11
	drum_speed 6
	drum_note 3, 4
	drum_speed 12
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 15
	sound_loop 0, .mainLoop
