Music_Route7:
	channel_count 4
	channel 1, Music_Route7_Ch1
	channel 2, Music_Route7_Ch2
	channel 3, Music_Route7_Ch3
	channel 4, Music_Route7_Ch4

Music_Route7_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 4
	note_type 12, 12, 4
	tempo 247
	sound_call .sub1
	sound_call .sub1
	note_type 12, 8, 4
	stereo_panning TRUE, TRUE
	octave 5
	note C#, 1
	octave 4
	note G#, 1
	note D#, 1
	octave 5
	note C#, 1
	octave 4
	note G#, 1
	note D#, 1
	octave 5
	note C#, 1
	octave 4
	note G#, 1
	note D#, 1
	octave 5
	note C#, 1
	octave 4
	note G#, 1
	note D#, 1
	octave 5
	note C#, 1
	octave 4
	note G#, 1
	note D#, 1
	octave 5
	note C#, 1
	octave 4
	note G#, 1
	note D#, 1
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
	rest 6
	sound_loop 0, .mainLoop

.sub1:
	stereo_panning TRUE, TRUE
	volume_envelope 8, 4
	note A#, 1
	note G#, 1
	note D#, 1
	note A#, 1
	note G#, 1
	note D#, 1
	note A#, 1
	note G#, 1
	note D#, 1
	note A#, 1
	note G#, 1
	note D#, 1
	sound_ret

Music_Route7_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 12
	octave 4
	volume_envelope 5, 4
	note F#, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note F#, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note F#, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note F#, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note_type 6, 7, 8
	sound_call .sub1
	octave 4
	sound_call .sub1
	note_type 6, 7, 8
	octave 4
	sound_call .sub1
	note_type 6, 8, 1
	octave 4
	sound_call .sub1
	octave 4
	note_type 6, 8, 1
	sound_call .sub1
	octave 4
	note_type 6, 8, 1
	sound_call .sub1
	note_type 1, 8, 1
	rest 12
	note_type 12, 8, 1
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
	rest 5
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 5, 3
	note F#, 1
	note D#, 1
	note C#, 1
	octave 3
	note B_, 1
	note G#, 1
	note F#, 1
	sound_ret

Music_Route7_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 12
	octave 2
	volume_envelope 1, 8
	note A#, 6
	note B_, 3
	octave 3
	note C#, 3
	note F#, 6
	note F_, 3
	note D#, 3
	octave 2
	note A#, 6
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
	rest 6
	sound_loop 0, .mainLoop

Music_Route7_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	octave 5
	drum_note 10, 1
	drum_note 10, 1
	drum_speed 6
	drum_note 11, 1
	drum_note 11, 1
	sound_call .sub1
	drum_note 11, 1
	octave 6
	drum_note 3, 1
	octave 5
	drum_note 10, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	octave 6
	drum_note 3, 1
	octave 5
	drum_note 10, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_speed 6
	sound_call .sub1
	drum_speed 6
	sound_call .sub1
	drum_speed 6
	sound_call .sub1
	drum_speed 6
	sound_call .sub1
	octave 5
	drum_speed 6
	sound_call .sub1
	octave 5
	drum_speed 6
	sound_call .sub1
	octave 5
	drum_speed 6
	sound_call .sub1
	octave 5
	drum_speed 6
	sound_call .sub1
	octave 5
	drum_speed 6
	drum_note 10, 3
	drum_note 10, 3
	drum_note 11, 1
	drum_note 11, 2
	octave 6
	drum_note 3, 3
	drum_speed 12
	octave 8
	rest 7
	drum_speed 1
	rest 16
	rest 16
	rest 4
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
	rest 12
	sound_loop 0, .mainLoop

.sub1:
	drum_note 11, 1
	octave 6
	drum_note 3, 1
	octave 5
	drum_note 10, 2
	drum_note 11, 1
	drum_note 11, 1
	sound_ret
