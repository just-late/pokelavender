Music_Cave:
	channel_count 4
	channel 1, Music_Cave_Ch1
	channel 2, Music_Cave_Ch2
	channel 3, Music_Cave_Ch3
	channel 4, Music_Cave_Ch4

Music_Cave_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	duty_cycle 2
	stereo_panning TRUE, FALSE
	tempo 160
	octave 4
	volume_envelope 10, 5
	sound_call .sub1
	sound_call .sub2
	note_type 12, 10, 5
	sound_call .sub3
	octave 4
	sound_call .sub3
	note_type 12, 10, 5
	octave 4
	sound_call .sub3
	note_type 12, 10, 5
	octave 4
	sound_call .sub3
	note_type 12, 10, 5
	octave 4
	sound_call .sub3
	note_type 12, 10, 5
	octave 4
	sound_call .sub3
	note_type 12, 10, 2
	octave 4
	stereo_panning TRUE, TRUE
	note C#, 1
	rest 1
	stereo_panning FALSE, TRUE
	sound_call .sub4
	rest 1
	octave 4
	sound_call .sub4
	note_type 12, 6, 8
	octave 4
	note A_, 1
	note B_, 1
	note F#, 1
	note B_, 1
	note F#, 1
	note A_, 1
	stereo_panning TRUE, FALSE
	note B_, 1
	note A_, 1
	stereo_panning FALSE, TRUE
	note B_, 1
	note F#, 1
	stereo_panning TRUE, FALSE
	note B_, 1
	note E_, 1
	stereo_panning FALSE, TRUE
	note B_, 1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 4
	octave 4
	note C#, 6
	volume_envelope 5, 8
	note C#, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 3, 8
	note C#, 1
	volume_envelope 2, 8
	note C#, 1
	rest 16
	rest 16
	rest 2
	volume_envelope 3, 3
	note A_, 2
	stereo_panning TRUE, FALSE
	note A_, 2
	stereo_panning FALSE, TRUE
	note A_, 2
	stereo_panning TRUE, FALSE
	volume_envelope 3, 8
	note A_, 6
	volume_envelope 2, 8
	note A_, 1
	volume_envelope 1, 8
	note A_, 1
	volume_envelope 4, 3
	note B_, 2
	stereo_panning FALSE, TRUE
	note B_, 2
	stereo_panning TRUE, FALSE
	note B_, 2
	stereo_panning FALSE, TRUE
	note B_, 2
	volume_envelope 4, 8
	note B_, 6
	volume_envelope 3, 8
	note B_, 1
	volume_envelope 2, 8
	note B_, 1
	rest 16
	rest 16
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 14
	sound_jump .mainLoop

.sub1:
	note B_, 2
	note A_, 2
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 1
	rest 1
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	sound_ret

.sub2:
	note B_, 2
	note A_, 2
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	sound_ret

.sub3:
	note B_, 2
	note A_, 2
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	sound_ret

.sub4:
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note C#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note C#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note C#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note C#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note C#, 1
	sound_ret

Music_Cave_Ch2:
	note_type 12, 15, 8
.mainLoop:
	note_type 12, 15, 8
	rest 1
	octave 4
	stereo_panning FALSE, TRUE
	duty_cycle 2
	volume_envelope 4, 5
	sound_call .sub2
	note_type 12, 4, 5
	sound_call .sub2
	note_type 12, 5, 5
	duty_cycle 3
	rest 1
	octave 5
	volume_envelope 4, 5
	stereo_panning TRUE, FALSE
	note E_, 2
	octave 3
	volume_envelope 8, 5
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 4
	note D_, 2
	rest 2
	note A_, 4
	note F#, 4
	volume_envelope 5, 5
	note B_, 1
	volume_envelope 7, 5
	note B_, 1
	volume_envelope 8, 8
	vibrato 3, 1, 1
	note B_, 9
	rest 1
	volume_envelope 6, 3
	sound_call .sub1
	rest 4
	sound_call .sub1
	note_type 12, 7, 3
	duty_cycle 0
	rest 2
	volume_envelope 3, 8
	note B_, 1
	volume_envelope 4, 8
	note B_, 1
	volume_envelope 5, 8
	note B_, 1
	volume_envelope 6, 8
	note B_, 1
	volume_envelope 7, 8
	note B_, 8
	note_type 6, 7, 8
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note_type 12, 7, 8
	note F#, 8
	note_type 12, 5, 8
	note F#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 3, 8
	note F#, 1
	volume_envelope 2, 8
	note F#, 1
	volume_envelope 3, 8
	note E_, 4
	note_type 12, 4, 8
	note F#, 1
	volume_envelope 5, 8
	note F#, 1
	volume_envelope 6, 8
	note F#, 10
	volume_envelope 5, 8
	note F#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 3, 8
	note F#, 1
	volume_envelope 2, 8
	note F#, 1
	note F_, 1
	note E_, 1
	volume_envelope 3, 8
	note E_, 1
	volume_envelope 4, 8
	note E_, 1
	volume_envelope 5, 8
	note E_, 1
	volume_envelope 6, 8
	note E_, 1
	volume_envelope 7, 8
	note E_, 10
	volume_envelope 9, 8
	note E_, 8
	note A_, 2
	note B_, 2
	note F#, 8
	volume_envelope 7, 8
	note F#, 1
	volume_envelope 6, 8
	note F#, 1
	volume_envelope 5, 8
	note F#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 3, 8
	note F#, 1
	rest 3
	note E_, 2
	note F#, 2
	note C#, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 5, 8
	note C#, 1
	volume_envelope 6, 8
	note C#, 1
	volume_envelope 7, 8
	note C#, 1
	volume_envelope 8, 8
	note C#, 7
	octave 3
	note A_, 2
	note B_, 2
	note E_, 2
	volume_envelope 9, 8
	note F#, 1
	volume_envelope 10, 8
	note F#, 1
	volume_envelope 11, 8
	note F#, 1
	volume_envelope 12, 8
	note F#, 7
	rest 16
	rest 1
	octave 4
	volume_envelope 6, 3
	stereo_panning TRUE, FALSE
	transpose 0, 0
	note C#, 2
	stereo_panning FALSE, TRUE
	note B_, 2
	stereo_panning TRUE, FALSE
	note C#, 2
	note B_, 2
	stereo_panning FALSE, TRUE
	note C#, 2
	stereo_panning TRUE, FALSE
	note B_, 2
	stereo_panning FALSE, TRUE
	note B_, 2
	note C#, 2
	note B_, 2
	rest 2
	note C#, 2
	note A_, 2
	stereo_panning TRUE, FALSE
	note C#, 2
	note B_, 2
	stereo_panning FALSE, TRUE
	note C#, 2
	stereo_panning TRUE, FALSE
	note A_, 2
	stereo_panning FALSE, TRUE
	note A_, 2
	note C#, 2
	volume_envelope 7, 8
	note E_, 1
	volume_envelope 8, 8
	note E_, 1
	volume_envelope 9, 8
	note E_, 1
	volume_envelope 10, 8
	note E_, 1
	volume_envelope 11, 8
	note E_, 7
	volume_envelope 9, 8
	note E_, 1
	volume_envelope 7, 8
	note E_, 1
	volume_envelope 6, 8
	note E_, 1
	volume_envelope 5, 8
	note E_, 1
	volume_envelope 4, 8
	note E_, 1
	rest 11
	volume_envelope 2, 8
	duty_cycle 3
	sound_call .sub3
	rest 16
	sound_call .sub3
	note_type 12, 2, 8
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
	sound_jump .mainLoop

.sub1:
	note B_, 2
	volume_envelope 7, 3
	note B_, 2
	volume_envelope 8, 3
	note B_, 2
	volume_envelope 7, 3
	note B_, 2
	sound_ret

.sub2:
	note B_, 2
	note A_, 2
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	sound_ret

.sub3:
	note E_, 1
	volume_envelope 3, 8
	note E_, 1
	volume_envelope 4, 8
	note E_, 1
	volume_envelope 5, 8
	note E_, 1
	volume_envelope 6, 8
	note E_, 4
	volume_envelope 7, 8
	note F#, 4
	note C#, 3
	volume_envelope 6, 8
	note C#, 1
	volume_envelope 5, 8
	note C#, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 3, 8
	note C#, 1
	volume_envelope 2, 8
	note C#, 1
	sound_ret

Music_Cave_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 14
	octave 4
	volume_envelope 3, 6
	note E_, 1
	volume_envelope 2, 6
	note E_, 1
	volume_envelope 1, 6
	note E_, 8
	rest 10
	volume_envelope 3, 6
	note B_, 1
	volume_envelope 2, 6
	note B_, 1
	volume_envelope 1, 6
	note B_, 8
	rest 2
	volume_envelope 3, 6
	note A_, 1
	volume_envelope 2, 6
	note A_, 1
	volume_envelope 1, 6
	note A_, 8
	volume_envelope 3, 6
	note D_, 2
	note E_, 1
	volume_envelope 2, 6
	note E_, 1
	volume_envelope 1, 6
	note E_, 8
	octave 3
	volume_envelope 3, 6
	note A_, 1
	volume_envelope 2, 6
	note A_, 1
	volume_envelope 1, 6
	note A_, 2
	note B_, 4
	octave 4
	note E_, 4
	note D_, 2
	volume_envelope 2, 6
	note D_, 1
	volume_envelope 3, 6
	note D_, 1
	rest 2
	octave 3
	note A_, 1
	volume_envelope 2, 6
	note A_, 1
	volume_envelope 1, 6
	note A_, 7
	rest 1
	octave 2
	volume_envelope 3, 6
	note B_, 2
	octave 3
	volume_envelope 2, 6
	note D_, 2
	volume_envelope 1, 6
	note E_, 2
	note F#, 2
	octave 2
	volume_envelope 2, 6
	note B_, 4
	note A_, 8
	octave 3
	note D_, 8
	octave 2
	note E_, 4
	note B_, 2
	note A_, 2
	note F#, 4
	note D_, 4
	note A_, 4
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	volume_envelope 1, 3
	note A_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note B_, 6
	volume_envelope 2, 3
	note B_, 1
	volume_envelope 3, 3
	note B_, 1
	volume_envelope 2, 3
	note B_, 1
	volume_envelope 1, 3
	note B_, 1
	octave 3
	note D_, 2
	note E_, 2
	note A_, 2
	note D_, 2
	note E_, 10
	stereo_panning TRUE, FALSE
	note F#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note F#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note F#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note F#, 1
	rest 1
	stereo_panning TRUE, TRUE
	note F#, 8
	volume_envelope 2, 3
	note F#, 1
	volume_envelope 3, 3
	note F#, 1
	note E_, 2
	note F#, 2
	volume_envelope 2, 3
	stereo_panning TRUE, FALSE
	note E_, 1
	rest 1
	stereo_panning FALSE, TRUE
	note E_, 1
	rest 1
	stereo_panning TRUE, FALSE
	note E_, 1
	rest 1
	stereo_panning FALSE, TRUE
	note E_, 1
	rest 1
	note E_, 8
	volume_envelope 3, 3
	note E_, 1
	rest 9
	stereo_panning TRUE, FALSE
	octave 4
	volume_envelope 1, 6
	note C#, 8
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 3, 3
	note C#, 1
	octave 3
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 3, 6
	note B_, 1
	volume_envelope 2, 6
	note B_, 1
	volume_envelope 1, 6
	note B_, 6
	note A_, 6
	volume_envelope 2, 6
	note A_, 1
	volume_envelope 3, 6
	note A_, 1
	rest 2
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note B_, 2
	volume_envelope 1, 6
	note E_, 2
	volume_envelope 2, 6
	note F#, 2
	volume_envelope 1, 6
	note C#, 6
	volume_envelope 3, 6
	note C#, 1
	note C#, 1
	rest 2
	stereo_panning TRUE, FALSE
	volume_envelope 3, 3
	note C#, 2
	note C#, 2
	stereo_panning FALSE, TRUE
	note C#, 2
	note C#, 2
	stereo_panning TRUE, FALSE
	note C#, 2
	note C#, 2
	stereo_panning FALSE, TRUE
	note C#, 2
	rest 16
	rest 14
	volume_envelope 1, 3
	sound_call .sub1
	rest 8
	stereo_panning FALSE, TRUE
	volume_envelope 2, 3
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note C#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note C#, 6
	note_type 12, 1, 3
	stereo_panning TRUE, TRUE
	note E_, 8
	note F#, 4
	note C#, 4
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 3, 3
	note C#, 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 6
	octave 8
	sound_jump .mainLoop

.sub1:
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note C#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note C#, 6
	sound_ret

Music_Cave_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 12
	octave 5
	sound_call .sub1
	octave 5
	stereo_panning TRUE, TRUE
	drum_note 7, 4
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	rest 8
	toggle_noise
	toggle_noise 7
	sound_call .sub2
	drum_speed 12
	octave 5
	stereo_panning TRUE, TRUE
	drum_note 7, 4
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, TRUE
	drum_note 7, 4
	stereo_panning TRUE, FALSE
	drum_note 11, 2
	stereo_panning FALSE, TRUE
	drum_note 11, 2
	sound_call .sub2
	drum_speed 12
	octave 5
	stereo_panning TRUE, TRUE
	sound_call .sub3
	sound_call .sub3
	drum_speed 12
	stereo_panning TRUE, TRUE
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 7, 4
	drum_note 8, 4
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 7, 4
	drum_note 8, 4
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, TRUE
	drum_note 7, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, TRUE
	drum_note 7, 4
	drum_note 8, 4
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 10, 2
	octave 6
	drum_note 3, 2
	octave 5
	drum_note 7, 4
	drum_note 10, 2
	octave 6
	drum_note 3, 2
	octave 5
	drum_note 7, 4
	drum_note 10, 2
	drum_note 10, 2
	octave 6
	drum_note 3, 2
	drum_note 3, 2
	octave 5
	drum_note 7, 4
	drum_note 10, 2
	drum_note 10, 2
	octave 6
	drum_note 3, 2
	drum_note 3, 2
	rest 14
	stereo_panning TRUE, FALSE
	sound_call .sub4
	octave 5
	stereo_panning TRUE, TRUE
	drum_note 7, 4
	octave 6
	sound_call .sub4
	drum_speed 12
	octave 5
	stereo_panning TRUE, TRUE
	drum_note 7, 4
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	rest 16
	rest 14
	stereo_panning TRUE, TRUE
	sound_call .sub5
	rest 4
	sound_call .sub5
	drum_speed 12
	rest 6
	drum_note 7, 4
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
	rest 4
	sound_jump .mainLoop

.sub1:
	toggle_noise
	toggle_noise 7
	drum_note 7, 4
	octave 6
	stereo_panning TRUE, FALSE
	drum_note 1, 2
	octave 5
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	octave 6
	stereo_panning TRUE, FALSE
	drum_note 3, 4
	octave 5
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	octave 6
	stereo_panning TRUE, FALSE
	drum_note 3, 2
	sound_ret

.sub2:
	drum_note 7, 4
	octave 6
	stereo_panning TRUE, FALSE
	drum_note 1, 2
	octave 5
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	octave 6
	stereo_panning TRUE, FALSE
	drum_note 3, 4
	octave 5
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	octave 6
	stereo_panning TRUE, FALSE
	drum_note 3, 2
	sound_ret

.sub3:
	drum_note 7, 4
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, TRUE
	toggle_noise
	toggle_noise 7
	drum_note 7, 4
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	drum_note 8, 4
	sound_ret

.sub4:
	drum_note 3, 2
	stereo_panning FALSE, TRUE
	drum_note 3, 2
	stereo_panning TRUE, FALSE
	drum_note 3, 2
	stereo_panning FALSE, TRUE
	drum_note 3, 2
	sound_ret

.sub5:
	drum_note 7, 4
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning FALSE, TRUE
	drum_note 10, 2
	stereo_panning TRUE, FALSE
	drum_note 10, 2
	stereo_panning TRUE, TRUE
	drum_note 7, 4
	sound_ret
