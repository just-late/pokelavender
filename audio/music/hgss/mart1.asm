Music_mart:
	channel_count 4
	channel 1, Music_mart_Ch1
	channel 2, Music_mart_Ch2
	channel 3, Music_mart_Ch3
	channel 4, Music_mart_Ch4

Music_mart_Ch1:
	volume 7, 7
	octave 5
	note_type 6, 15, 8
	tempo 256
	duty_cycle 2
	note C_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	octave 6
	note C_, 8
	octave 5
	note C_, 4
	octave 6
	note_type 12, 15, 8
.mainLoop:
	note_type 6, 15, 8
	rest 4
	octave 4
	duty_cycle 3
	volume_envelope 15, 1
	note A_, 8
	note G_, 8
	note E_, 4
	note F_, 4
	note G_, 4
	note A_, 4
	volume_envelope 15, 8
	note A#, 8
	rest 16
	volume_envelope 15, 1
	rest 16
	rest 16
	rest 16
	octave 6
	note_type 12, 15, 8
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
	rest 2
	sound_loop 0, .mainLoop

Music_mart_Ch2:
	octave 4
	note_type 6, 15, 1
	duty_cycle 2
	note C_, 1
	note D_, 1
	note D#, 1
	note_type 6, 15, 8
	note E_, 1
	note F_, 8
	duty_cycle 3
	octave 3
	note F_, 4
	octave 5
	note_type 12, 15, 8
.mainLoop:
	rest 1
	octave 4
	note_type 6, 15, 1
	vibrato 3, 0, 0
	duty_cycle 2
	sound_call .sub1
	note_type 6, 15, 1
	rest 2
	octave 4
	sound_call .sub1
	note_type 6, 15, 8
	rest 2
	octave 4
	sound_call .sub1
	note_type 6, 15, 8
	rest 2
	octave 4
	sound_call .sub1
	note_type 12, 15, 8
	octave 5
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
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	note C_, 2
	rest 2
	note C_, 2
	note_type 12, 15, 8
	rest 1
	octave 3
	note_type 6, 15, 8
	note G_, 2
	rest 2
	note G_, 2
	note_type 12, 15, 8
	rest 1
	note_type 6, 15, 8
	octave 4
	note C_, 2
	rest 2
	note C_, 2
	octave 3
	note_type 12, 15, 8
	rest 1
	note_type 6, 15, 8
	note G_, 2
	rest 1
	note_type 6, 10, 8
	rest 1
	volume_envelope 15, 8
	note G_, 2
	sound_ret

Music_mart_Ch3:
	note_type 12, 1, 0
	rest 2
	octave 5
	note A_, 4
	octave 4
	note A_, 2
	octave 8
.mainLoop:
	octave 3
	volume_envelope 1, 6
	sound_call .sub1
	sound_call .sub1
	note_type 12, 1, 6
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
	note_type 12, 1, 0
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	note F_, 2
	rest 1
	note F_, 1
	note C_, 2
	rest 1
	note C_, 1
	note F_, 2
	rest 1
	note F_, 1
	note C_, 2
	rest 1
	note C_, 1
	note G_, 2
	rest 1
	note G_, 1
	note C_, 2
	rest 1
	note C_, 1
	note G_, 2
	rest 1
	note G_, 1
	note C_, 2
	rest 1
	note C_, 1
	sound_ret

Music_mart_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 2
	toggle_noise
	toggle_noise 5
	octave 7
	drum_note 1, 1
	rest 2
	drum_note 1, 1
	drum_note 1, 2
	octave 8
.mainLoop:
	octave 6
	sound_call .sub1
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
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
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	drum_note 6, 3
	drum_note 10, 1
	drum_note 6, 3
	drum_note 10, 1
	drum_note 6, 3
	drum_note 10, 1
	drum_note 6, 3
	drum_note 10, 1
	sound_ret
