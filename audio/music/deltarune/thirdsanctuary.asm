Music_ThirdSanctuary:
	channel_count 4
	channel 1, Music_ThirdSanctuary_Ch1
	channel 2, Music_ThirdSanctuary_Ch2
	channel 3, Music_ThirdSanctuary_Ch3
	channel 4, Music_ThirdSanctuary_Ch4

Music_ThirdSanctuary_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 4
	duty_cycle 1
	volume_envelope 10, 8
	tempo 128
	vibrato 1, 0, 0
	sound_call .sub2
	rest 16
	rest 2
	octave 4
	sound_call .sub1
	note_type 12, 15, 8
	rest 16
	rest 2
	octave 4
	sound_call .sub2
	note_type 12, 15, 8
	rest 16
	rest 2
	octave 4
	sound_call .sub3
	rest 16
	rest 2
	octave 4
	sound_call .sub4
	note_type 12, 15, 8
	rest 16
	rest 2
	octave 4
	sound_call .sub5
	rest 16
	rest 2
	octave 4
	sound_call .sub6
	note_type 12, 15, 8
	rest 16
	rest 2
	octave 4
	sound_call .sub7
	rest 16
	rest 2
	octave 4
	sound_call .sub8
	note_type 12, 15, 8
	rest 4
	octave 4
	sound_call .sub8
	note_type 12, 15, 8
	rest 4
	octave 4
	sound_call .sub8
	octave 3
	note_type 12, 15, 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 2
	sound_loop 0, .mainLoop

.sub1:
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	volume_envelope 15, 1
	note C#, 2
	volume_envelope 15, 8
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	sound_ret

.sub2:
	tempo 128
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	volume_envelope 15, 1
	note C#, 2
	volume_envelope 15, 8
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	sound_ret

.sub3:
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	volume_envelope 15, 1
	note C#, 2
	volume_envelope 15, 8
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	sound_ret

.sub4:
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	volume_envelope 15, 1
	note C#, 2
	volume_envelope 15, 8
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	sound_ret

.sub5:
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	volume_envelope 15, 1
	note C#, 2
	volume_envelope 15, 8
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	sound_ret

.sub6:
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	volume_envelope 15, 1
	note C#, 2
	volume_envelope 15, 8
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	sound_ret

.sub7:
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	volume_envelope 15, 1
	note C#, 2
	volume_envelope 15, 8
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	sound_ret

.sub8:
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	volume_envelope 15, 1
	note C#, 2
	volume_envelope 15, 8
	note C#, 2
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	sound_ret

Music_ThirdSanctuary_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 3
	volume_envelope 8, 8
	sound_call .sub1
	rest 16
	rest 2
	octave 3
	sound_call .sub2
	note_type 12, 8, 8
	rest 16
	rest 2
	octave 3
	sound_call .sub5
	rest 16
	rest 2
	sound_call .sub3
	note_type 12, 12, 8
	rest 16
	rest 2
	octave 3
	sound_call .sub1
	note_type 12, 12, 8
	rest 16
	rest 2
	octave 3
	sound_call .sub4
	note_type 12, 12, 8
	rest 16
	rest 2
	octave 3
	sound_call .sub6
	rest 16
	rest 2
	sound_call .sub7
	note_type 12, 12, 8
	rest 16
	rest 2
	sound_call .sub4
	octave 3
	note_type 12, 12, 8
	rest 4
	sound_call .sub4
	octave 3
	note_type 12, 12, 8
	rest 4
	sound_call .sub7
	octave 3
	note_type 12, 12, 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 2
	sound_loop 0, .mainLoop

.sub2:
	note F#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	volume_envelope 8, 1
	note F#, 2
	volume_envelope 8, 8
	note F#, 2
	note C#, 2
	octave 2
	note A#, 2
	note G#, 2
	sound_ret

.sub3:
	note F#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	volume_envelope 8, 1
	note F#, 2
	volume_envelope 8, 8
	note F#, 2
	note C#, 2
	octave 2
	note G#, 2
	volume_envelope 12, 8
	octave 3
	note F_, 2
	sound_ret

.sub1:
	note F#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	volume_envelope 8, 1
	note F#, 2
	volume_envelope 8, 8
	note F#, 2
	note C#, 2
	octave 2
	note A#, 2
	note G#, 2
	sound_ret

.sub5:
	note F#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	volume_envelope 8, 1
	note F#, 2
	volume_envelope 8, 8
	note F#, 2
	note C#, 2
	octave 2
	note G#, 2
	volume_envelope 12, 8
	octave 3
	note F_, 2
	sound_ret

.sub6:
	note F#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	volume_envelope 8, 1
	note F#, 2
	volume_envelope 8, 8
	note F#, 2
	note C#, 2
	octave 2
	note G#, 2
	volume_envelope 12, 8
	octave 3
	note F_, 2
	sound_ret

.sub4:
	note F#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	volume_envelope 8, 1
	note F#, 2
	volume_envelope 8, 8
	note F#, 2
	note C#, 2
	octave 2
	note A#, 2
	note G#, 2
	sound_ret

.sub7:
	note F#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	volume_envelope 8, 1
	note F#, 2
	volume_envelope 8, 8
	note F#, 2
	note C#, 2
	octave 2
	note G#, 2
	volume_envelope 12, 8
	octave 3
	note F_, 2
	sound_ret

Music_ThirdSanctuary_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	rest 8
	rest 8
	octave 2
	note A#, 2
	rest 16
	rest 16
	rest 2
	note A#, 2
	rest 16
	rest 2
	octave 5
	volume_envelope 1, 1
	vibrato 0, 0, 0
	note D#, 16
	note D#, 16
	note D#, 4
	note F_, 16
	note F_, 16
	note F_, 4
	note F#, 16
	note F#, 16
	note F#, 4
	note A#, 16
	note_type 12, 1, 1
	note A#, 16
	note A#, 4
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
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

Music_ThirdSanctuary_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	rest 8
	rest 16
	rest 16
	rest 16
	rest 14
	octave 5
	toggle_noise
	toggle_noise 1
	drum_note 6, 2
	drum_note 6, 2
	rest 12
	drum_note 6, 2
	drum_note 6, 2
	rest 16
	drum_note 6, 2
	drum_note 6, 2
	rest 16
	rest 16
	drum_note 6, 2
	drum_note 6, 2
	rest 16
	rest 16
	drum_note 7, 2
	drum_note 7, 2
	rest 2
	drum_speed 12
	rest 16
	rest 16
	sound_call .sub1
	octave 5
	sound_call .sub2
	drum_speed 12
	octave 5
	sound_call .sub2
	octave 4
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
	rest 14
	sound_loop 0, .mainLoop

.sub1:
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 6, 2
	octave 4
	drum_note 12, 2
	octave 5
	drum_note 6, 2
	drum_note 6, 2
	octave 4
	drum_note 12, 2
	octave 5
	drum_note 1, 1
	drum_note 1, 1
	sound_ret

.sub2:
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 6, 2
	octave 4
	drum_note 12, 2
	octave 5
	drum_note 6, 2
	drum_note 6, 2
	octave 4
	drum_note 12, 2
	octave 5
	drum_note 1, 1
	drum_note 1, 1
	sound_ret
