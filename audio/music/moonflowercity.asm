Music_MoonflowerCity:
	channel_count 4
	channel 1, Music_MoonflowerCity_Ch1
	channel 2, Music_MoonflowerCity_Ch2
	channel 3, Music_MoonflowerCity_Ch3
	channel 4, Music_MoonflowerCity_Ch4

Music_MoonflowerCity_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 3
	volume_envelope 0, 1
	tempo 200
	duty_cycle 2
	note G_, 1
	rest 11
	note_type 3, 7, 8
	note A_, 1
	rest 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	note_type 15, 7, 8
	note D_, 6
	note_type 1, 7, 8
	rest 3
	note_type 12, 7, 8
	note F_, 2
	note F_, 1
	note E_, 2
	note D_, 1
	note E_, 2
	note D_, 10
	rest 1
	note_type 3, 7, 8
	rest 16
	rest 16
	note_type 12, 7, 8
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop

Music_MoonflowerCity_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 12
	octave 3
	note_type 3, 5, 8
	duty_cycle 1
	note G_, 1
	rest 1
	note G#, 1
	note A_, 1
	note A#, 1
	note_type 7, 4, 8
	note A_, 15
	note_type 12, 4, 8
	note E_, 1
	note G_, 1
	note A_, 5
	note E_, 1
	note G_, 1
	note A_, 1
	duty_cycle 2
	octave 2
	note_type 14, 6, 8
	note B_, 3
	note A_, 3
	rest 1
	note_type 1, 6, 8
	rest 3
	note_type 3, 6, 8
	rest 14
	note_type 1, 6, 8
	rest 1
	note_type 3, 6, 8
	rest 16
	rest 16
	rest 16
	note_type 1, 6, 8
	rest 12
	note_type 12, 6, 8
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
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

Music_MoonflowerCity_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 13
	octave 3
	volume_envelope 1, 3
	note D_, 5
	octave 2
	note A_, 1
	note B_, 1
	octave 3
	note D_, 2
	octave 2
	note A_, 1
	note B_, 1
	octave 3
	note D_, 2
	octave 2
	note A_, 1
	note B_, 1
	octave 3
	note D_, 11
	rest 16
	rest 16
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 9
	sound_loop 0, .mainLoop

Music_MoonflowerCity_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	octave 5
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 10, 1
	drum_note 10, 1
	drum_note 8, 1
	drum_note 10, 1
	drum_note 10, 1
	sound_call .sub1
	sound_call .sub1
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 4
	sound_loop 0, .mainLoop

.sub1:
	drum_note 8, 1
	drum_note 12, 2
	drum_note 8, 2
	drum_note 12, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 12, 2
	drum_note 10, 1
	drum_note 8, 3
	drum_note 12, 1
	sound_ret
