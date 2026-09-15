Music_Caravan:
	channel_count 4
	channel 1, Music_Caravan_Ch1
	channel 2, Music_Caravan_Ch2
	channel 3, Music_Caravan_Ch3
	channel 4, Music_Caravan_Ch4

Music_Caravan_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	tempo 110
	octave 3
	note_type 6, 10, 7
	sound_call .sub2
	octave 3
	note_type 6, 10, 7
	sound_call .sub2
	octave 3
	duty_cycle 3
	transpose 1, 0
	note_type 6, 10, 7
	sound_call .sub2
	octave 3
	sound_call .sub1
	octave 3
	note_type 6, 10, 7
	sound_call .sub1
	octave 3
	note_type 6, 10, 7
	sound_call .sub1
	octave 3
	note_type 6, 10, 7
	sound_call .sub1
	octave 3
	note_type 6, 10, 7
	sound_call .sub1
	octave 8
	note_type 12, 10, 7
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

.sub1:
	note C_, 13
	octave 2
	note G_, 11
	octave 3
	note C_, 8
	note C#, 13
	octave 2
	note G#, 11
	octave 3
	note C#, 8
	note C_, 13
	octave 2
	note G_, 11
	octave 3
	note C_, 8
	octave 2
	note A#, 13
	note F_, 11
	note A#, 8
	sound_ret

.sub2:
	octave 2
	note C_, 13
	note G_, 11
	octave 3
	note C_, 8
	octave 2
	note C#, 13
	note G#, 11
	octave 3
	note C#, 8
	octave 2
	note C_, 13
	note G_, 11
	octave 3
	note C_, 8
	octave 1
	note A#, 13
	octave 2
	note F_, 11
	note A#, 8
	sound_ret

Music_Caravan_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	octave 4
	note_type 6, 15, 8
	rest 5
	volume_envelope 13, 5
	note C_, 8
	note_type 12, 15, 8
	rest 4
	note_type 6, 13, 4
	note C#, 8
	note C_, 3
	octave 3
	note A#, 5
	octave 4
	note C_, 3
	note C#, 8
	note C_, 8
	octave 3
	note G_, 16
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 1
	octave 4
	note C_, 8
	octave 3
	note G_, 11
	transpose 0, 3
	note_type 12, 15, 8
	note A_, 16
	note A_, 16
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop

Music_Caravan_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 2
	note_type 6, 1, 0
	rest 1
	octave 3
	volume_envelope 1, 6
	note A_, 8
	note_type 12, 1, 0
	rest 4
	note_type 6, 1, 6
	note A#, 8
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	rest 1
	volume_envelope 1, 6
	note G_, 5
	note_type 1, 1, 0
	rest 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 6
	note A#, 8
	rest 5
	octave 4
	note C_, 16
	note_type 12, 1, 0
	octave 8
	rest 15
	note_type 1, 1, 4
	rest 6
	note_type 12, 1, 4
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 14
	sound_loop 0, .mainLoop

Music_Caravan_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	octave 5
	toggle_noise
	toggle_noise 7
	drum_speed 6
	sound_call .sub3
	rest 9
	drum_note 8, 7
	sound_call .sub3
	octave 5
	drum_speed 6
	drum_note 11, 3
	drum_note 11, 3
	drum_note 11, 2
	drum_note 11, 3
	drum_note 11, 3
	drum_note 11, 2
	drum_note 8, 8
	drum_note 12, 5
	drum_note 12, 3
	drum_note 8, 8
	drum_note 11, 8
	drum_note 8, 8
	drum_note 12, 5
	drum_note 12, 3
	drum_note 8, 8
	drum_note 11, 8
	drum_note 8, 8
	drum_note 11, 5
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 8, 8
	drum_note 9, 5
	drum_note 9, 1
	drum_note 9, 2
	drum_note 12, 3
	drum_note 12, 3
	drum_note 12, 2
	drum_note 11, 3
	drum_note 11, 3
	drum_note 11, 2
	drum_note 7, 8
	drum_note 8, 3
	drum_note 8, 3
	drum_note 8, 2
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	octave 5
	sound_call .sub1
	drum_speed 12
	octave 5
	sound_call .sub1
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop

.sub1:
	drum_speed 6
	drum_note 11, 5
	drum_note 12, 3
	drum_note 8, 5
	drum_note 12, 3
	drum_note 11, 2
	drum_note 11, 2
	rest 1
	drum_note 12, 3
	drum_note 8, 5
	drum_note 12, 3
	drum_note 11, 5
	drum_note 12, 3
	drum_note 8, 5
	drum_note 12, 1
	drum_note 12, 2
	drum_note 11, 5
	drum_note 12, 3
	drum_note 8, 5
	drum_note 8, 3
	drum_speed 12
	sound_ret

.sub2:
	drum_note 11, 5
	drum_note 12, 3
	drum_note 8, 5
	drum_note 12, 3
	drum_note 11, 2
	drum_note 11, 2
	rest 1
	drum_note 12, 3
	drum_note 8, 5
	drum_note 12, 3
	drum_note 11, 5
	drum_note 12, 3
	drum_note 8, 5
	drum_note 12, 1
	drum_note 12, 2
	drum_note 11, 5
	drum_note 12, 3
	drum_note 8, 5
	drum_note 8, 3
	sound_ret

.sub3:
	drum_note 11, 3
	drum_note 11, 3
	drum_note 11, 3
	drum_note 11, 3
	drum_note 11, 1
	rest 11
	drum_note 8, 8
	drum_note 11, 5
	drum_note 11, 3
	drum_note 11, 5
	drum_note 8, 3
	sound_ret
