Music_UntitledSong:
	channel_count 4
	channel 1, Music_UntitledSong_Ch1
	channel 2, Music_UntitledSong_Ch2
	channel 3, Music_UntitledSong_Ch3
	channel 4, Music_UntitledSong_Ch4

Music_UntitledSong_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
	rest 16
	rest 8
	octave 1
	duty_cycle 1
	vibrato 0, 1, 1
	note B_, 4
	octave 2
	note E_, 4
	octave 8
.mainLoop:
	octave 1
	volume_envelope 7, 8
	tempo 200
	note B_, 12
	note B_, 4
	octave 2
	note C#, 4
	octave 1
	note F#, 8
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
	rest 4
	note_type 12, 7, 8
	sound_loop 0, .mainLoop

Music_UntitledSong_Ch2:
	note_type 12, 15, 8
	rest 16
	rest 16
.mainLoop:
	octave 2
	volume_envelope 8, 8
	duty_cycle 1
	note E_, 12
	note E_, 4
	note F#, 4
	octave 1
	note B_, 8
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
	rest 4
	note_type 12, 8, 8
	sound_loop 0, .mainLoop

Music_UntitledSong_Ch3:
	octave 5
	note_type 6, 1, 0
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 16
	note_type 12, 1, 0
	rest 6
	note_type 6, 1, 0
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 16
	note_type 12, 1, 0
	rest 3
	note_type 1, 1, 0
	rest 16
	rest 16
	rest 4
	note_type 12, 1, 0
	octave 8
.mainLoop:
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 8
	rest 16
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 8
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
	rest 8
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

Music_UntitledSong_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 11
	octave 5
	drum_note 1, 1
	drum_speed 6
	toggle_noise
	toggle_noise 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 4
	drum_speed 12
	rest 16
.mainLoop:
	octave 5
	toggle_noise
	toggle_noise 1
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 8
	drum_speed 12
	rest 3
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 8
	drum_speed 1
	rest 16
	rest 8
	drum_speed 12
	rest 8
	drum_speed 6
	drum_note 1, 1
	drum_note 3, 1
	drum_note 5, 1
	drum_note 3, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 8
	drum_speed 12
	octave 8
	rest 4
	drum_speed 1
	rest 16
	rest 16
	rest 16
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
	rest 4
	sound_loop 0, .mainLoop
