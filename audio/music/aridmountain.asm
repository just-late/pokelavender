Music_AridMountain:
	channel_count 4
	channel 1, Music_AridMountain_Ch1
	channel 2, Music_AridMountain_Ch2
	channel 3, Music_AridMountain_Ch3
	channel 4, Music_AridMountain_Ch4

Music_AridMountain_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 3
	volume_envelope 15, 7
	tempo 150
	sound_call .sub1
	sound_call .sub1
	note_type 12, 15, 7
	octave 3
	sound_call .sub1
	note_type 12, 15, 7
	octave 3
	sound_call .sub1
	note_type 12, 8, 7
	octave 3
	note F_, 4
	octave 4
	note C_, 2
	octave 3
	note G_, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 4
	note D#, 4
	octave 4
	note C_, 2
	octave 3
	note F_, 4
	octave 4
	note C_, 2
	octave 3
	note A_, 4
	sound_call .sub1
	note_type 12, 15, 7
	note F_, 4
	octave 4
	volume_envelope 8, 7
	note C_, 2
	octave 3
	note D_, 4
	octave 4
	note C_, 2
	rest 2
	note C_, 4
	octave 3
	note F_, 2
	note G_, 4
	octave 4
	note C_, 4
	note C#, 4
	note D_, 2
	octave 3
	note G_, 4
	note A#, 4
	rest 2
	octave 4
	note C_, 2
	note C_, 1
	rest 1
	note D#, 1
	note C_, 1
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	note D#, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 3
	note A_, 1
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
	note D_, 1
	note C_, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	note D#, 1
	note F_, 1
	note C_, 1
	octave 3
	note A_, 1
	note G_, 4
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
	sound_loop 0, .mainLoop

.sub1:
	transpose 1, 0
	note F_, 4
	octave 4
	note C_, 2
	octave 3
	note G_, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 4
	note D#, 4
	octave 4
	note C_, 2
	octave 3
	note F_, 4
	octave 4
	note C_, 2
	octave 3
	note F_, 4
	sound_ret

Music_AridMountain_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 4
	octave 4
	volume_envelope 15, 7
	sound_call .sub1
	rest 4
	octave 4
	sound_call .sub1
	note_type 12, 15, 7
	rest 4
	octave 4
	sound_call .sub1
	note_type 12, 15, 7
	rest 4
	octave 4
	sound_call .sub1
	note_type 12, 15, 7
	rest 4
	octave 4
	volume_envelope 8, 7
	note D_, 2
	rest 4
	note D_, 2
	rest 2
	note C_, 2
	rest 4
	octave 3
	note A#, 2
	rest 4
	octave 4
	note D_, 2
	octave 3
	note G_, 4
	rest 4
	octave 4
	sound_call .sub1
	note_type 12, 15, 7
	rest 4
	octave 4
	volume_envelope 8, 7
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	octave 4
	note D_, 4
	note C_, 2
	octave 3
	note A#, 2
	note G_, 2
	octave 4
	note C_, 4
	note D_, 4
	octave 3
	note F_, 4
	octave 4
	note C_, 2
	octave 3
	note F_, 4
	octave 4
	note C_, 2
	octave 3
	note F_, 4
	rest 3
	octave 4
	note D_, 1
	octave 3
	volume_envelope 9, 7
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	note A_, 6
	rest 2
	note A_, 2
	rest 2
	note A_, 4
	octave 4
	note D_, 4
	rest 2
	note C_, 2
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
	sound_loop 0, .mainLoop

.sub1:
	transpose 1, 0
	note D_, 2
	rest 4
	note D_, 2
	rest 2
	note C_, 2
	rest 4
	octave 3
	note A#, 2
	rest 4
	octave 4
	note D_, 2
	octave 3
	note A_, 4
	sound_ret

Music_AridMountain_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 6
	octave 3
	volume_envelope 1, 5
	note D#, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	note G_, 2
	octave 4
	note D_, 4
	note C_, 4
	note F_, 2
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note A_, 4
	note F_, 2
	note G_, 4
	note D_, 4
	note F_, 2
	note C_, 10
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note F_, 2
	note G_, 10
	note D_, 2
	note F_, 10
	note D#, 8
	note C_, 2
	note D_, 6
	octave 3
	note A#, 4
	octave 4
	note C_, 12
	note D_, 2
	note F_, 1
	note G_, 1
	note C_, 16
	octave 3
	note A#, 2
	note G_, 14
	rest 16
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
	sound_loop 0, .mainLoop

Music_AridMountain_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	octave 6
	sound_call .sub1
	octave 6
	sound_call .sub1
	drum_speed 12
	octave 6
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
	sound_loop 0, .mainLoop

.sub1:
	drum_note 1, 3
	drum_note 3, 1
	drum_note 3, 4
	octave 5
	drum_note 8, 4
	drum_note 8, 4
	sound_ret
