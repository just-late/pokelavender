Music_Gate:
	channel_count 4
	channel 1, Music_Gate_Ch1
	channel 2, Music_Gate_Ch2
	channel 3, Music_Gate_Ch3
	channel 4, Music_Gate_Ch4

Music_Gate_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 3
	tempo 210
	volume_envelope 9, 8
	duty_cycle 3
	vibrato 4, 1, 0
	note F_, 8
	octave 4
	note C#, 4
	note C_, 4
	rest 4
	note D#, 4
	octave 3
	note G#, 4
	octave 4
	note F_, 4
	rest 4
	octave 3
	note G#, 4
	octave 4
	note C_, 4
	note C#, 4
	rest 4
	octave 3
	note G#, 4
	octave 4
	note D#, 4
	note C#, 4
	rest 4
	octave 3
	note_type 12, 9, 8
	vibrato 0, 0, 0
	note F_, 4
	note C#, 4
	note G#, 4
	rest 4
	octave 4
	note C_, 4
	note C#, 4
	octave 3
	note G#, 4
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
	sound_loop 0, .mainLoop

Music_Gate_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 7
	note_type 6, 9, 1
	octave 3
	duty_cycle 2
	note G#, 1
	note G#, 1
	volume_envelope 9, 8
	note G#, 8
	note_type 12, 15, 8
	rest 3
	note_type 6, 9, 1
	note C#, 1
	note C#, 1
	volume_envelope 9, 8
	note C#, 8
	note_type 12, 15, 8
	rest 3
	note_type 6, 15, 8
	octave 2
	sound_call .sub1
	note_type 12, 15, 8
	rest 3
	note_type 6, 15, 8
	octave 2
	sound_call .sub1
	note_type 12, 15, 8
	rest 3
	octave 3
	note_type 6, 7, 8
	note F_, 1
	note F_, 1
	note F_, 8
	note_type 12, 15, 8
	rest 3
	octave 2
	note_type 6, 7, 8
	note G#, 1
	note G#, 1
	note G#, 8
	vibrato 0, 0, 0
	rest 6
	octave 3
	duty_cycle 2
	note C#, 1
	note C#, 1
	note_type 12, 15, 8
	rest 7
	note_type 6, 7, 8
	note F_, 1
	note F_, 1
	note F_, 8
	note_type 6, 15, 8
	rest 2
	note_type 12, 15, 8
	rest 2
	note_type 6, 7, 8
	note D#, 1
	note D#, 1
	note D#, 8
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	octave 2
	rest 2
	volume_envelope 7, 8
	note G#, 1
	note G#, 1
	note G#, 8
	note_type 12, 15, 8
	octave 8
	rest 3
	note_type 1, 15, 8
	rest 12
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
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 9, 8
	note G#, 1
	note G#, 1
	note G#, 8
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 1
	note_type 1, 15, 8
	rest 6
	octave 3
	note_type 6, 9, 8
	note D#, 1
	note D#, 1
	note D#, 8
	sound_ret

Music_Gate_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 3
	volume_envelope 1, 2
	note C#, 2
	rest 4
	note C#, 2
	rest 4
	note_type 12, 2, 1
	rest 4
	note_type 12, 1, 2
	octave 2
	note A#, 2
	rest 4
	note A#, 2
	rest 8
	octave 3
	note F_, 2
	rest 4
	note F_, 2
	rest 8
	note F#, 2
	rest 4
	note F#, 2
	rest 5
	octave 2
	note F#, 1
	rest 1
	note F#, 1
	octave 3
	note C#, 2
	rest 4
	note C#, 1
	note_type 12, 1, 0
	vibrato 0, 0, 0
	rest 9
	octave 2
	volume_envelope 1, 2
	note A#, 2
	rest 4
	note A#, 2
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
	octave 8
	sound_loop 0, .mainLoop

Music_Gate_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	octave 5
	toggle_noise
	toggle_noise 6
	sound_call .sub1
	sound_call .sub1
	drum_speed 12
	octave 5
	sound_call .sub1
	drum_speed 12
	octave 5
	sound_call .sub2
	octave 5
	sound_call .sub2
	drum_speed 12
	octave 5
	sound_call .sub2
	octave 8
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
	sound_loop 0, .mainLoop

.sub1:
	rest 1
	drum_speed 6
	drum_note 8, 1
	drum_note 8, 1
	drum_speed 12
	drum_note 8, 2
	drum_speed 6
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 2
	drum_speed 12
	drum_note 10, 2
	drum_note 6, 1
	drum_speed 6
	drum_note 8, 1
	drum_note 8, 1
	drum_speed 12
	drum_note 8, 2
	drum_note 10, 2
	drum_note 8, 2
	sound_ret

.sub2:
	drum_note 10, 2
	drum_note 8, 2
	drum_note 10, 2
	drum_note 6, 2
	drum_note 10, 2
	drum_note 8, 2
	drum_note 10, 2
	drum_note 8, 2
	sound_ret
