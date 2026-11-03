Music_SnowRoute:
	channel_count 4
	channel 1, Music_SnowRoute_Ch1
	channel 2, Music_SnowRoute_Ch2
	channel 3, Music_SnowRoute_Ch3
	channel 4, Music_SnowRoute_Ch4

Music_SnowRoute_Ch1:
	volume 7, 7
	note_type 12, 11, 5
	vibrato 3, 2, 2
	duty_cycle 1
	octave 5
	tempo 150
	sound_call .sub1
.mainLoop:
	sound_call .sub1
	note_type 12, 5, 8
	octave 6
	sound_call .sub1
	octave 5
	note_type 12, 5, 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
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
	stereo_panning TRUE, TRUE
	octave 6
	pitch_slide 1, 1, E_
	volume_envelope 5, 5
	note C_, 2
	octave 5
	note E_, 2
	note D_, 2
	note E_, 2
	note B_, 2
	octave 6
	note C_, 2
	octave 5
	pitch_slide 1, 1, D_
	volume_envelope 5, 8
	note A_, 2
	volume_envelope 5, 5
	note D_, 2
	note C_, 2
	note D_, 2
	note A_, 2
	note B_, 2
	pitch_slide 1, 1, B_
	note G_, 2
	octave 4
	note B_, 2
	note A_, 2
	note B_, 2
	octave 5
	note F#, 2
	note G_, 2
	volume_envelope 5, 8
	note D_, 9
	volume_envelope 4, 8
	note D_, 1
	volume_envelope 3, 8
	note D_, 1
	volume_envelope 2, 8
	note D_, 1
	sound_ret

Music_SnowRoute_Ch2:
	note_type 12, 15, 8
	rest 16
	rest 16
	rest 16
.mainLoop:
	octave 3
	transpose 0, 0
	vibrato 3, 2, 2
	duty_cycle 3
	stereo_panning TRUE, TRUE
	volume_envelope 5, 8
	note E_, 8
	volume_envelope 6, 8
	note F#, 4
	note B_, 12
	volume_envelope 7, 8
	note E_, 4
	volume_envelope 5, 8
	note F#, 4
	volume_envelope 6, 8
	note G_, 4
	volume_envelope 7, 8
	note B_, 12
	note E_, 4
	note F#, 4
	note G_, 4
	note D_, 8
	note E_, 4
	note F#, 4
	note G_, 4
	note A_, 4
	octave 4
	note E_, 8
	note D_, 4
	octave 3
	note A_, 12
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
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
	note_type 12, 15, 8
	rest 16
	sound_loop 0, .mainLoop

Music_SnowRoute_Ch3:
	note_type 12, 1, 0
	rest 16
	rest 16
	rest 16
.mainLoop:
	octave 3
	stereo_panning TRUE, TRUE
	volume_envelope 2, 0
	note G_, 8
	note A_, 4
	note E_, 8
	note F#, 4
	note B_, 4
	note A_, 4
	note B_, 4
	octave 4
	note D_, 12
	note G_, 8
	note F#, 4
	octave 3
	note B_, 8
	octave 4
	note C_, 4
	note D_, 8
	note F#, 4
	note B_, 12
	rest 16
	rest 16
	rest 16
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 1, 0
	rest 16
	sound_loop 0, .mainLoop

Music_SnowRoute_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
	rest 16
.mainLoop:
	rest 16
	rest 16
	rest 16
	octave 6
	sound_call .sub1
	toggle_noise
	toggle_noise 0
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
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
	sound_loop 0, .mainLoop

.sub1:
	drum_note 8, 4
	drum_note 12, 4
	drum_note 9, 4
	sound_ret
