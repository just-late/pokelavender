Music_GemrootTown:
	channel_count 4
	channel 1, Music_GemrootTown_Ch1
	channel 2, Music_GemrootTown_Ch2
	channel 3, Music_GemrootTown_Ch3
	channel 4, Music_GemrootTown_Ch4

Music_GemrootTown_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 3
	duty_cycle 3
	volume_envelope 13, 2
	note G_, 2
	note_type 15, 13, 2
	note A_, 1
	octave 4
	note_type 12, 13, 2
	note C_, 2
	note_type 1, 13, 2
	rest 6
	note_type 15, 13, 2
	note D_, 1
	note_type 12, 13, 2
	rest 1
	note D_, 1
	note D_, 1
	note_type 15, 13, 2
	note C_, 1
	note_type 1, 13, 2
	rest 4
	note_type 15, 13, 2
	octave 3
	note A_, 1
	note_type 1, 13, 2
	rest 9
	note_type 15, 13, 2
	note B_, 1
	note_type 1, 13, 2
	rest 2
	note_type 15, 13, 2
	note G_, 2
	note_type 1, 13, 2
	rest 4
	note_type 15, 13, 2
	octave 4
	note C_, 2
	note E_, 2
	note_type 14, 13, 2
	note D_, 1
	note_type 12, 13, 2
	note C_, 2
	octave 3
	note A_, 1
	octave 4
	note C_, 2
	note D_, 1
	note E_, 2
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note G_, 3
	rest 2
	octave 5
	note C_, 2
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	note C_, 1
	note_type 1, 13, 2
	rest 12
	note_type 12, 13, 2
	note C_, 1
	rest 1
	octave 4
	note A_, 1
	note G_, 1
	rest 1
	octave 5
	note C_, 2
	rest 1
	note C_, 2
	note C_, 1
	note C_, 1
	rest 1
	octave 4
	note G_, 2
	note A_, 1
	rest 1
	octave 5
	note C_, 1
	note D_, 1
	note C_, 2
	note C_, 1
	rest 1
	note C_, 1
	note D_, 1
	octave 4
	note A_, 1
	note G_, 1
	note E_, 1
	note D_, 1
	note C_, 3
	note C#, 1
	note C#, 1
	rest 1
	octave 3
	note A_, 1
	octave 4
	note D_, 2
	rest 1
	octave 3
	note C_, 1
	rest 1
	note D_, 1
	note E_, 2
	note G_, 3
	rest 1
	note G_, 2
	note E_, 1
	note G_, 1
	note G_, 1
	note E_, 1
	rest 1
	octave 4
	note C_, 2
	rest 1
	octave 3
	note A_, 2
	note G_, 1
	note B_, 2
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 14
	octave 8
	sound_loop 0, .mainLoop

Music_GemrootTown_Ch2:
	note_type 12, 15, 8
.mainLoop:
	duty_cycle 2
	transpose 0, 0
	volume_envelope 10, 4
	rest 16
	rest 3
	note_type 12, 6, 8
	rest 1
	note_type 1, 6, 8
	rest 3
	note_type 15, 6, 8
	rest 3
	note_type 12, 15, 8
	rest 7
	note_type 1, 15, 8
	rest 16
	rest 16
	rest 16
	rest 12
	note_type 12, 15, 8
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
	rest 12
	sound_loop 0, .mainLoop

Music_GemrootTown_Ch3:
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop

Music_GemrootTown_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 3
	octave 2
	toggle_noise
	toggle_noise 4
	drum_note 8, 2
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
	rest 11
	sound_loop 0, .mainLoop
