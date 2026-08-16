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
	octave 4
	volume_envelope 7, 5
	tempo 150
	duty_cycle 0
	sound_call .sub1
	sound_call .sub1
	note_type 12, 7, 5
	rest 16
	rest 16
	volume_envelope 1, 5
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
	volume_envelope 10, 5
	note F_, 4
	note C_, 2
	note D#, 2
	note C_, 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 4
	note C_, 2
	note D#, 2
	note C_, 2
	octave 3
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 4
	note C_, 2
	sound_ret

Music_AridMountain_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 10
	octave 4
	note_type 6, 4, 8
	rest 1
	note G#, 1
	note_type 12, 4, 8
	note A#, 1
	note G#, 1
	note A#, 1
	rest 1
	note G#, 1
	note A#, 1
	note G#, 1
	note F#, 1
	note F_, 1
	rest 10
	note_type 6, 15, 8
	rest 1
	volume_envelope 7, 8
	duty_cycle 2
	transpose 2, 0
	note G#, 1
	note A#, 1
	note G#, 1
	note_type 12, 8, 5
	note G#, 4
	note F_, 2
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 3
	note_type 1, 15, 8
	rest 12
	note_type 12, 8, 8
	note F#, 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 2
	note A#, 2
	octave 4
	note D#, 6
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
	rest 12
	sound_loop 0, .mainLoop

Music_AridMountain_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 2
	volume_envelope 1, 4
	note C_, 3
	rest 1
	note D#, 2
	note F_, 3
	rest 1
	note G_, 2
	note D#, 3
	rest 1
	octave 1
	note B_, 3
	rest 1
	octave 2
	note D#, 2
	note F#, 3
	rest 1
	note F_, 2
	note C_, 4
	octave 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	rest 1
	note D#, 2
	note F_, 3
	rest 1
	note G_, 2
	note D#, 3
	rest 1
	octave 1
	note B_, 3
	rest 1
	octave 2
	note D#, 2
	note F#, 3
	rest 1
	note F_, 2
	note C_, 4
	note_type 12, 1, 4
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
	rest 16
	rest 16
	sound_loop 0, .mainLoop
