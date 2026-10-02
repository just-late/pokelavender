Music_Titlescreen:
	channel_count 4
	channel 1, Music_Titlescreen_Ch1
	channel 2, Music_Titlescreen_Ch2
	channel 3, Music_Titlescreen_Ch3
	channel 4, Music_Titlescreen_Ch4

Music_Titlescreen_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	duty_cycle 2
	octave 3
	tempo 194
	stereo_panning TRUE, TRUE
	note_type 6, 11, 8
	note F_, 16
	note_type 4, 15, 8
	rest 16
	rest 8
	note_type 6, 15, 8
	note F_, 16
	note_type 12, 15, 8
	rest 8
	note_type 6, 15, 8
	note A_, 16
	note_type 12, 15, 8
	rest 8
	note A_, 16
	volume_envelope 0, 1
	tempo 138
	note A_, 1
	rest 16
	rest 16
	rest 16
	rest 15
	duty_cycle 0
	vibrato 2, 2, 4
	volume_envelope 15, 8
	note F_, 7
	note_type 6, 15, 8
	note E_, 1
	note D#, 1
	note D_, 12
	note_type 12, 11, 8
	rest 2
	octave 2
	note_type 6, 14, 8
	note A_, 8
	octave 3
	note C_, 8
	note F_, 8
	note D_, 8
	note G_, 16
	note_type 6, 11, 8
	note A_, 16
	note A_, 16
	note_type 12, 11, 8
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	sound_loop 0, .mainLoop

Music_Titlescreen_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 3
	volume_envelope 11, 8
	duty_cycle 2
	note A_, 8
	rest 6
	vibrato 0, 0, 0
	note_type 12, 13, 7
	rest 2
	volume_envelope 13, 8
	note A#, 8
	note_type 4, 13, 7
	rest 12
	note_type 12, 13, 7
	rest 1
	note_type 1, 13, 7
	rest 16
	rest 8
	note_type 12, 13, 7
	rest 1
	octave 4
	volume_envelope 13, 8
	note C_, 8
	rest 8
	note D_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	octave 3
	volume_envelope 4, 8
	note D_, 8
	octave 2
	note A_, 6
	rest 2
	octave 3
	note C_, 4
	octave 2
	note G_, 4
	octave 3
	note C_, 4
	octave 2
	note A_, 4
	octave 3
	note D_, 8
	note E_, 2
	rest 1
	note E_, 1
	note F_, 2
	rest 1
	note F_, 1
	octave 4
	note C_, 2
	rest 1
	note C_, 3
	rest 1
	note C_, 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	octave 8
	sound_loop 0, .mainLoop

Music_Titlescreen_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 3
	note D_, 8
	note_type 4, 1, 0
	stereo_panning TRUE, TRUE
	rest 16
	rest 8
	note_type 12, 1, 0
	note D_, 8
	rest 2
	note_type 1, 1, 0
	rest 16
	rest 8
	note_type 12, 1, 0
	rest 4
	note F_, 8
	rest 8
	note F_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	octave 2
	note_type 6, 1, 2
	note A_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 1
	rest 1
	note E_, 3
	rest 1
	sound_call .sub1
	note_type 6, 1, 0
	sound_call .sub1
	note_type 6, 1, 0
	sound_call .sub2
	note_type 6, 1, 0
	sound_call .sub2
	octave 2
	note_type 6, 1, 2
	note D_, 4
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 4
	note G_, 1
	rest 1
	note E_, 1
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 2
	note D_, 4
	note E_, 1
	note_type 1, 1, 0
	rest 6
	octave 3
	note_type 6, 1, 2
	note D_, 2
	octave 2
	note D_, 4
	note A_, 1
	note G_, 1
	note E_, 1
	note G_, 1
	note A_, 3
	rest 1
	octave 3
	note C_, 1
	note D_, 1
	octave 2
	note A_, 1
	octave 3
	note E_, 1
	note F_, 3
	rest 1
	note C_, 1
	note D_, 1
	note E_, 1
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 2
	note C_, 3
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	rest 1
	volume_envelope 1, 2
	note C_, 1
	note D_, 1
	note E_, 3
	rest 1
	note_type 1, 1, 0
	rest 12
	note_type 6, 1, 2
	octave 2
	note F_, 2
	note_type 12, 1, 0
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 1, 2
	note D_, 3
	octave 2
	rest 1
	note A_, 1
	note_type 1, 1, 0
	rest 6
	octave 3
	note_type 6, 1, 2
	note C_, 2
	sound_ret

.sub2:
	volume_envelope 1, 2
	note E_, 3
	rest 1
	octave 2
	note G_, 1
	note_type 1, 1, 0
	rest 6
	octave 3
	note_type 6, 1, 2
	note C_, 2
	sound_ret

Music_Titlescreen_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 8
	drum_speed 4
	stereo_panning FALSE, TRUE
	rest 16
	rest 16
	rest 4
	drum_speed 12
	rest 4
	drum_speed 1
	rest 16
	rest 16
	rest 4
	drum_speed 12
	rest 16
	rest 16
	rest 1
	octave 6
	drum_note 1, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_call .sub1
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	octave 6
	sound_call .sub2
	octave 6
	sound_call .sub2
	drum_speed 12
	octave 6
	sound_call .sub2
	drum_speed 12
	octave 5
	drum_note 8, 2
	rest 2
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 11, 3
	octave 6
	drum_note 1, 4
	octave 5
	drum_note 11, 4
	drum_note 11, 2
	octave 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 2
	rest 16
	rest 16
	rest 16
	rest 8
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	drum_note 1, 2
	drum_note 3, 2
	rest 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	octave 5
	drum_note 8, 2
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	octave 6
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

.sub2:
	drum_note 1, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	octave 5
	drum_note 11, 4
	octave 6
	drum_note 3, 1
	drum_note 3, 1
	rest 2
	octave 5
	drum_note 11, 2
	sound_ret
