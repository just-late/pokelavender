Music_Underwater:
	channel_count 4
	channel 1, Music_Underwater_Ch1
	channel 2, Music_Underwater_Ch2
	channel 3, Music_Underwater_Ch3
	channel 4, Music_Underwater_Ch4

Music_Underwater_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop_Ch1:
	octave 5
	volume_envelope 2, 1
	duty_cycle 1
	sound_call .sub3
	rest 1
	note D#, 1
	octave 4
	sound_call .sub5
	rest 1
	sound_call .sub1
	note_type 12, 1, 1
	rest 5
	octave 4
	sound_call .sub2
	note_type 12, 1, 1
	rest 2
	octave 3
	volume_envelope 4, 8
	duty_cycle 2
	vibrato 3, 1, 2
	note D#, 11
	rest 2
	octave 5
	volume_envelope 1, 1
	duty_cycle 1
	vibrato 0, 0, 0
	sound_call .sub4
	note_type 12, 1, 8
	octave 2
	duty_cycle 2
	note A#, 16
	rest 1
	note A#, 11
	octave 3
	note D#, 8
	rest 1
	octave 2
	note G#, 8
	rest 2
	note F#, 5
	rest 1
	octave 5
	sound_call .sub4
	note_type 12, 1, 8
	rest 3
	sound_call .sub7
	note_type 12, 1, 8
	rest 2
	octave 4
	volume_envelope 1, 1
	note G#, 1
	note A#, 1
	volume_envelope 2, 1
	rest 1
	note G#, 1
	note A#, 1
	volume_envelope 3, 1
	rest 1
	note G#, 1
	note A#, 1
	rest 1
	note_type 12, 4, 8
	note G#, 1
	note A#, 1
	rest 1
	volume_envelope 5, 1
	note G#, 1
	note A#, 1
	rest 1
	note G#, 1
	volume_envelope 6, 8
	note A#, 1
	octave 5
	note C#, 1
	volume_envelope 4, 1
	note D#, 1
	note F#, 1
	note G#, 1
	note_type 6, 4, 1
	note A#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	note C#, 1
	octave 4
	note A#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	note C#, 1
	octave 3
	note A#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	sound_call .sub6
	note_type 6, 4, 1
	sound_call .sub6
	note_type 6, 4, 1
	sound_call .sub6
	note_type 6, 2, 8
	octave 3
	note C#, 1
	octave 2
	note A#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	note C#, 1
	octave 1
	note A#, 1
	note G#, 2
	note A#, 1
	octave 2
	note C#, 1
	note D#, 1
	note F#, 2
	note G#, 1
	note A#, 1
	octave 3
	note C#, 1
	note D#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note C#, 1
	note D#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 5
	note C#, 2
	note D#, 2
	note F_, 1
	note F#, 1
	note F_, 1
	note D#, 1
	note C#, 1
	note C_, 1
	octave 4
	note A#, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note D#, 2
	note C#, 2
	octave 3
	note A#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	sound_call .sub6
	note_type 6, 2, 8
	note C#, 1
	note D#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note C#, 1
	note D#, 1
	note F#, 1
	note A#, 1
	note F#, 1
	note D#, 1
	note C#, 1
	octave 3
	note A#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note C#, 1
	note D#, 1
	note F#, 1
	octave 5
	note_type 12, 1, 8
	sound_call .sub7
	note_type 12, 4, 1
	rest 7
	octave 8
	sound_jump .mainLoop_Ch1

.sub1:
	duty_cycle 1
	note C#, 1
	note D#, 1
	volume_envelope 4, 1
	note C#, 1
	note D#, 1
	volume_envelope 6, 1
	note C#, 1
	note D#, 1
	volume_envelope 3, 1
	note C#, 1
	rest 1
	volume_envelope 1, 1
	note C#, 1
	sound_ret

.sub2:
	note G#, 1
	octave 5
	note C#, 1
	volume_envelope 2, 1
	note D#, 1
	octave 4
	note G#, 1
	octave 5
	note C#, 1
	volume_envelope 3, 1
	note D#, 1
	octave 4
	note G#, 1
	octave 5
	note C#, 1
	note D#, 1
	sound_ret

.sub3:
	volume_envelope 1, 1
	duty_cycle 1
	vibrato 0, 0, 0
	note C#, 1
	note D#, 1
	volume_envelope 4, 1
	note C#, 1
	note D#, 1
	volume_envelope 6, 1
	note C#, 1
	note D#, 1
	volume_envelope 3, 1
	note C#, 1
	rest 1
	volume_envelope 1, 1
	note C#, 1
	sound_ret

.sub4:
	note C#, 1
	note D#, 1
	volume_envelope 4, 1
	note C#, 1
	note D#, 1
	volume_envelope 6, 1
	note C#, 1
	note D#, 1
	volume_envelope 3, 1
	note C#, 1
	rest 1
	volume_envelope 1, 1
	note C#, 1
	sound_ret

.sub5:
	note G#, 1
	octave 5
	note C#, 1
	volume_envelope 2, 1
	note D#, 1
	octave 4
	note G#, 1
	octave 5
	note C#, 1
	volume_envelope 3, 1
	note D#, 1
	octave 4
	note G#, 1
	octave 5
	note C#, 1
	note D#, 1
	sound_ret

.sub6:
	volume_envelope 2, 8
	note C#, 1
	note D#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note C#, 1
	note D#, 1
	note F#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	note C#, 1
	octave 3
	note A#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	sound_ret

.sub7:
	note C#, 1
	note D#, 1
	volume_envelope 4, 1
	note C#, 1
	note D#, 1
	volume_envelope 6, 1
	note C#, 1
	note D#, 1
	volume_envelope 3, 1
	note C#, 1
	rest 1
	volume_envelope 1, 1
	note C#, 1
	sound_ret

Music_Underwater_Ch2:
	note_type 12, 15, 8
.mainLoop_Ch2:
	octave 2
	duty_cycle 2
	volume_envelope 5, 8
	transpose 1, 0
	note A#, 8
	octave 3
	note C#, 7
	note D#, 6
	octave 2
	note A#, 12
	note G#, 14
	rest 1
	note D#, 10
	note F#, 16
	note D#, 9
	rest 1
	note D#, 11
	rest 2
	note D#, 8
	note C#, 8
	note C_, 1
	octave 1
	note B_, 1
	note A#, 5
	octave 2
	note A#, 11
	octave 3
	note C#, 3
	note D#, 11
	octave 2
	note A#, 10
	octave 3
	note F#, 10
	note D#, 8
	note C#, 8
	note D#, 9
	octave 2
	note A#, 9
	note F#, 11
	note A#, 8
	note G#, 16
	octave 3
	note A#, 6
	note F#, 16
	octave 8
	sound_jump .mainLoop_Ch2

Music_Underwater_Ch3:
	note_type 12, 1, 0
.mainLoop_Ch3:
	octave 2
	note C#, 9
	octave 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 2
	note C#, 1
	note D#, 1
	note F#, 1
	note G#, 6
	note D#, 9
	note_type 6, 1, 0
	note F#, 1
	note G#, 1
	note F#, 1
	note D#, 1
	note F#, 1
	note D#, 1
	note_type 12, 1, 0
	note C#, 14
	note_type 6, 1, 0
	note D#, 1
	note F#, 1
	note G#, 1
	note_type 12, 1, 0
	note A#, 9
	note C#, 10
	note D#, 1
	note_type 6, 1, 0
	note F#, 1
	note G#, 1
	note A#, 1
	octave 3
	note C#, 1
	note_type 12, 1, 0
	note D#, 13
	note F#, 12
	rest 1
	octave 2
	note G#, 8
	note_type 6, 1, 0
	note A#, 1
	octave 3
	note_type 12, 1, 0
	note C#, 8
	note C_, 1
	octave 2
	note B_, 1
	note A#, 5
	note C#, 11
	note_type 6, 1, 0
	note D#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 3
	note C#, 1
	octave 2
	note A#, 1
	note_type 12, 1, 0
	note G#, 11
	note D#, 10
	note F#, 10
	note C#, 8
	note D#, 8
	note G#, 9
	note D#, 9
	octave 1
	note A#, 11
	octave 2
	note D#, 8
	octave 1
	note_type 6, 1, 0
	note B_, 1
	note G#, 1
	note E_, 1
	note G_, 1
	octave 2
	note_type 12, 1, 0
	note C#, 14
	octave 3
	note C#, 6
	octave 2
	note F#, 16
	octave 8
	sound_jump .mainLoop_Ch3

Music_Underwater_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop_Ch4:
	rest 16
	rest 16
	toggle_noise
	toggle_noise 6
	rest 13
	octave 5
	drum_note 3, 14
	rest 13
	drum_note 3, 16
	rest 1
	drum_note 3, 16
	rest 1
	drum_note 3, 15
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 7
	sound_jump .mainLoop_Ch4
