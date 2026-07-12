Music_OredaleCity:
	channel_count 4
	channel 1, Music_OredaleCity_Ch1
	channel 2, Music_OredaleCity_Ch2
	channel 3, Music_OredaleCity_Ch3
	channel 4, Music_OredaleCity_Ch4

Music_OredaleCity_Ch1:
	volume 7, 7
	note_type 12, 3, 8
	octave 5
	tempo 128
	duty_cycle 2
	note A#, 1
	volume_envelope 1, 8
	note A#, 1
	note A#, 1
	rest 1
	vibrato 2, 1, 2
	volume_envelope 2, 8
	note A#, 3
	rest 1
	volume_envelope 1, 8
	note A#, 1
	volume_envelope 4, 8
	note A#, 5
	volume_envelope 1, 8
	note A#, 1
	volume_envelope 2, 8
	note A#, 3
	volume_envelope 1, 8
	note A#, 1
	volume_envelope 2, 8
	note A#, 4
	volume_envelope 1, 8
	note A#, 2
	volume_envelope 3, 8
	note A#, 3
	volume_envelope 1, 8
	note A#, 2
	rest 3
	volume_envelope 2, 8
	note A#, 1
	volume_envelope 1, 8
	note A#, 1
	volume_envelope 2, 8
	note A#, 2
	volume_envelope 1, 8
	note A#, 2
	note A#, 1
	note A#, 1
	volume_envelope 2, 8
	note A#, 2
	rest 1
	octave 8
.mainLoop_ch1:
	octave 3
	volume_envelope 7, 8
	duty_cycle 2
	tempo 128
	sound_call .sub1
	rest 10
	octave 4
	volume_envelope 2, 8
	sound_call .sub10
	note_type 12, 7, 8
	rest 10
	volume_envelope 1, 8
	note D#, 2
	note C#, 2
	note F#, 2
	note D#, 2
	note F#, 2
	rest 10
	sound_call .sub2
	rest 10
	sound_call .sub2
	note_type 12, 4, 8
	rest 10
	sound_call .sub2
	note_type 12, 2, 8
	rest 10
	volume_envelope 4, 8
	vibrato 0, 0, 0
	duty_cycle 2
	sound_call .sub3
	octave 4
	sound_call .sub3
	note_type 12, 4, 8
	octave 4
	sound_call .sub3
	note_type 12, 4, 8
	octave 4
	sound_call .sub4
	octave 4
	transpose 0, 2
	note F#, 2
	note D#, 2
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 6, 8
	note A#, 2
	octave 5
	volume_envelope 7, 8
	note C#, 2
	octave 4
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 3, 8
	note D#, 2
	octave 3
	volume_envelope 2, 8
	note A#, 2
	volume_envelope 3, 8
	note F#, 2
	volume_envelope 4, 8
	note G#, 2
	octave 4
	transpose 0, 0
	sound_call .sub5
	note_type 12, 4, 8
	octave 4
	transpose 0, 0
	sound_call .sub6
	octave 4
	sound_call .sub6
	note_type 12, 4, 8
	octave 4
	sound_call .sub6
	note_type 12, 4, 8
	octave 4
	transpose 0, 2
	note F#, 2
	note D#, 2
	volume_envelope 5, 8
	note G#, 4
	octave 5
	volume_envelope 7, 8
	note C#, 2
	octave 4
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 3, 8
	note D#, 4
	octave 3
	note F#, 2
	volume_envelope 4, 8
	note G#, 2
	octave 4
	sound_call .sub7
	octave 4
	sound_call .sub7
	note_type 12, 4, 8
	octave 4
	sound_call .sub7
	note_type 12, 4, 8
	octave 5
	sound_call .sub8
	octave 5
	sound_call .sub8
	note_type 12, 4, 8
	octave 4
	sound_call .sub9
	octave 4
	sound_call .sub9
	note_type 12, 3, 8
	octave 4
	sound_call .sub9
	note_type 12, 3, 8
	octave 4
	sound_call .sub9
	note_type 12, 3, 8
	octave 4
	sound_call .sub9
	note_type 12, 3, 8
	octave 4
	sound_call .sub9
	note_type 12, 3, 8
	octave 4
	sound_call .sub9
	note_type 12, 3, 8
	sound_jump .mainLoop_ch1

.sub1:
	octave 4
	volume_envelope 3, 8
	note D#, 2
	note C#, 2
	note F#, 2
	note D#, 2
	note F#, 2
	octave 3
	sound_ret

.sub10:
	note D#, 2
	note C#, 2
	note F#, 2
	note D#, 2
	note F#, 2
	sound_ret

.sub2:
	note D#, 2
	volume_envelope 1, 8
	note C#, 2
	note F#, 2
	note D#, 2
	note F#, 2
	sound_ret

.sub3:
	note F#, 2
	octave 4
	note D#, 2
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 6, 8
	note A#, 2
	octave 5
	volume_envelope 7, 8
	note C#, 2
	octave 4
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 3, 8
	note D#, 2
	octave 3
	volume_envelope 2, 8
	note A#, 2
	volume_envelope 3, 8
	note F#, 2
	volume_envelope 4, 8
	note G#, 2
	sound_ret

.sub4:
	transpose 0, 0
	note F#, 2
	note D#, 2
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 6, 8
	note A#, 2
	octave 5
	volume_envelope 7, 8
	note C#, 2
	octave 4
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 3, 8
	note D#, 2
	octave 3
	volume_envelope 2, 8
	note A#, 2
	volume_envelope 3, 8
	note F#, 2
	volume_envelope 4, 8
	note G#, 2
	sound_ret

.sub5:
	note F#, 2
	note D#, 2
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 6, 8
	note A#, 2
	octave 5
	volume_envelope 7, 8
	note C#, 2
	octave 4
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 3, 8
	note D#, 2
	octave 3
	volume_envelope 2, 8
	note A#, 2
	volume_envelope 3, 8
	note F#, 2
	volume_envelope 4, 8
	note G#, 2
	sound_ret

.sub6:
	note F#, 2
	note D#, 2
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 6, 8
	note A#, 2
	octave 5
	volume_envelope 7, 8
	note C#, 2
	octave 4
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 3, 8
	note D#, 2
	octave 3
	volume_envelope 2, 8
	note A#, 2
	volume_envelope 3, 8
	note F#, 2
	volume_envelope 4, 8
	note G#, 2
	sound_ret

.sub7:
	note F#, 2
	note D#, 2
	volume_envelope 5, 8
	note G#, 4
	octave 5
	volume_envelope 7, 8
	note C#, 2
	octave 4
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 3, 8
	note D#, 4
	octave 3
	note F#, 2
	volume_envelope 4, 8
	note G#, 2
	sound_ret

.sub8:
	note G#, 2
	note D#, 2
	note C#, 2
	octave 4
	note G#, 2
	note D#, 2
	octave 3
	note A#, 2
	note G#, 2
	note D#, 2
	note F#, 2
	note G#, 2
	sound_ret

.sub9:
	note D#, 2
	volume_envelope 5, 8
	note F#, 2
	volume_envelope 3, 8
	note C#, 2
	octave 3
	volume_envelope 2, 8
	note G#, 2
	octave 4
	volume_envelope 1, 8
	note D#, 1
	note F#, 1
	volume_envelope 2, 8
	note G#, 1
	note A_, 1
	octave 5
	volume_envelope 3, 8
	note C#, 1
	volume_envelope 4, 8
	note D#, 1
	note F#, 1
	volume_envelope 5, 8
	note G#, 1
	volume_envelope 4, 8
	note D#, 2
	volume_envelope 3, 8
	note C#, 2
	sound_ret

Music_OredaleCity_Ch2:
	note_type 12, 3, 8
	octave 4
	note D#, 2
	note C#, 2
	note F#, 2
	note D#, 2
	note G#, 2
	rest 10
	note D#, 2
	note C#, 2
	note F#, 2
	note D#, 2
	note A#, 2
	octave 8
	rest 14
.mainLoop_ch2:
	octave 2
	volume_envelope 7, 8
	duty_cycle 3
	sound_call .sub1
	rest 10
	octave 3
	volume_envelope 2, 8
	sound_call .sub7
	note_type 12, 7, 8
	rest 10
	octave 3
	volume_envelope 1, 8
	note F#, 2
	note B_, 2
	octave 4
	note D#, 2
	note F#, 2
	note G#, 2
	rest 10
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note D#, 2
	volume_envelope 2, 8
	note G#, 2
	volume_envelope 1, 8
	note A#, 2
	rest 10
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	volume_envelope 2, 8
	note D#, 2
	volume_envelope 3, 8
	note G#, 2
	volume_envelope 4, 8
	note A#, 2
	rest 10
	octave 3
	volume_envelope 1, 8
	sound_call .sub2
	octave 3
	sound_call .sub2
	note_type 12, 1, 8
	octave 3
	sound_call .sub2
	note_type 12, 1, 8
	octave 3
	sound_call .sub2
	note_type 12, 1, 8
	octave 3
	sound_call .sub3
	octave 3
	transpose 0, 2
	note F#, 1
	note G#, 1
	volume_envelope 1, 8
	note B_, 1
	octave 4
	note C#, 1
	note F#, 1
	note A#, 1
	octave 5
	volume_envelope 2, 8
	note C#, 1
	volume_envelope 3, 8
	note D#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 5, 8
	note G#, 1
	volume_envelope 3, 8
	note F#, 1
	volume_envelope 2, 8
	note D#, 1
	volume_envelope 1, 8
	note C#, 1
	note D#, 1
	octave 4
	note A#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	note D#, 1
	note F#, 1
	octave 3
	sound_call .sub3
	note_type 12, 1, 8
	octave 3
	sound_call .sub4
	octave 3
	sound_call .sub4
	note_type 12, 1, 8
	octave 3
	sound_call .sub4
	note_type 12, 1, 8
	octave 3
	transpose 0, 2
	note F#, 1
	note G#, 1
	note B_, 1
	octave 4
	note C#, 1
	note F#, 1
	note A#, 1
	octave 5
	volume_envelope 2, 8
	note C#, 1
	volume_envelope 3, 8
	note D#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 5, 8
	note G#, 1
	volume_envelope 3, 8
	note F#, 1
	volume_envelope 2, 8
	note D#, 1
	volume_envelope 1, 8
	note C#, 1
	note D#, 1
	octave 4
	note A#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	note D#, 1
	note F#, 1
	octave 3
	sound_call .sub5
	octave 3
	sound_call .sub5
	note_type 12, 1, 8
	octave 3
	sound_call .sub5
	note_type 12, 1, 8
	octave 3
	sound_call .sub5
	note_type 12, 1, 8
	octave 3
	sound_call .sub5
	note_type 12, 1, 8
	octave 3
	sound_call .sub6
	octave 3
	sound_call .sub6
	note_type 12, 1, 8
	octave 3
	sound_call .sub6
	note_type 12, 1, 8
	octave 3
	sound_call .sub6
	note_type 12, 1, 8
	octave 3
	sound_call .sub6
	note_type 12, 1, 8
	octave 3
	sound_call .sub6
	note_type 12, 1, 8
	octave 3
	sound_call .sub6
	note_type 12, 1, 8
	sound_jump .mainLoop_ch2

.sub1:
	octave 3
	volume_envelope 3, 8
	note F#, 2
	note B_, 2
	octave 4
	note D#, 2
	note F#, 2
	note G#, 2
	octave 3
	sound_ret

.sub2:
	note F#, 1
	volume_envelope 1, 8
	note G#, 1
	note B_, 1
	octave 4
	note C#, 1
	note F#, 1
	note A#, 1
	octave 5
	volume_envelope 2, 8
	note C#, 1
	volume_envelope 3, 8
	note D#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 5, 8
	note G#, 1
	volume_envelope 3, 8
	note F#, 1
	volume_envelope 2, 8
	note D#, 1
	volume_envelope 1, 8
	note C#, 1
	note D#, 1
	octave 4
	note A#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	note D#, 1
	note F#, 1
	sound_ret

.sub3:
	transpose 0, 0
	note F#, 1
	note G#, 1
	volume_envelope 1, 8
	note B_, 1
	octave 4
	note C#, 1
	note F#, 1
	note A#, 1
	octave 5
	volume_envelope 2, 8
	note C#, 1
	volume_envelope 3, 8
	note D#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 5, 8
	note G#, 1
	volume_envelope 3, 8
	note F#, 1
	volume_envelope 2, 8
	note D#, 1
	volume_envelope 1, 8
	note C#, 1
	note D#, 1
	octave 4
	note A#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	note D#, 1
	note F#, 1
	sound_ret

.sub4:
	note F#, 1
	note G#, 1
	volume_envelope 1, 8
	note B_, 1
	octave 4
	note C#, 1
	note F#, 1
	note A#, 1
	octave 5
	volume_envelope 2, 8
	note C#, 1
	volume_envelope 3, 8
	note D#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 5, 8
	note G#, 1
	volume_envelope 3, 8
	note F#, 1
	volume_envelope 2, 8
	note D#, 1
	volume_envelope 1, 8
	note C#, 1
	note D#, 1
	octave 4
	note A#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	note D#, 1
	note F#, 1
	sound_ret

.sub5:
	note F#, 1
	note G#, 1
	volume_envelope 1, 8
	note B_, 1
	octave 4
	note C#, 1
	note F#, 1
	note A#, 1
	octave 5
	volume_envelope 2, 8
	note C#, 1
	volume_envelope 3, 8
	note D#, 1
	volume_envelope 4, 8
	note F#, 1
	volume_envelope 5, 8
	note G#, 1
	volume_envelope 3, 8
	note F#, 1
	volume_envelope 2, 8
	note D#, 1
	volume_envelope 1, 8
	note C#, 1
	note D#, 1
	octave 4
	note A#, 1
	note F#, 1
	note G#, 1
	note A#, 1
	note D#, 1
	note F#, 1
	sound_ret

.sub6:
	volume_envelope 4, 8
	note F#, 1
	note A#, 1
	note B_, 1
	octave 4
	volume_envelope 5, 8
	note C#, 1
	note D#, 1
	volume_envelope 6, 8
	note F#, 1
	note D#, 1
	volume_envelope 5, 8
	note C#, 1
	octave 3
	volume_envelope 4, 8
	note A#, 2
	octave 4
	volume_envelope 3, 8
	note C#, 2
	octave 3
	volume_envelope 5, 8
	note G#, 2
	volume_envelope 3, 8
	note F#, 2
	volume_envelope 2, 8
	note G#, 1
	volume_envelope 1, 8
	note A#, 1
	octave 4
	note C#, 1
	volume_envelope 2, 8
	note D#, 1
	sound_ret

.sub7:
	note F#, 2
	note B_, 2
	octave 4
	note D#, 2
	note F#, 2
	note G#, 2
	sound_ret

Music_OredaleCity_Ch3:
	note_type 12, 1, 0
	octave 2
	sound_call .sub2
	octave 8
	note_type 12, 1, 0
	rest 14
.mainLoop_ch3:
	octave 2
	sound_call .sub1
	note_type 12, 1, 0
	rest 10
	octave 2
	sound_call .sub2
	note_type 12, 1, 0
	rest 10
	sound_call .sub3
	volume_envelope 2, 0
	note G#, 10
	volume_envelope 1, 0
	note G#, 2
	volume_envelope 2, 0
	note G#, 5
	volume_envelope 3, 0
	note G#, 1
	volume_envelope 2, 0
	note G#, 2
	sound_call .sub3
	note_type 12, 2, 0
	sound_call .sub3
	note_type 12, 2, 0
	octave 2
	sound_call .sub3
	note_type 12, 2, 0
	octave 2
	sound_call .sub4
	note_type 12, 2, 0
	transpose 0, 2
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	note_type 12, 2, 0
	octave 2
	transpose 0, 0
	sound_call .sub5
	note_type 12, 2, 0
	octave 2
	sound_call .sub6
	note_type 12, 3, 0
	sound_call .sub6
	note_type 12, 3, 0
	sound_call .sub6
	note_type 12, 2, 0
	transpose 0, 2
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	note_type 12, 2, 0
	sound_call .sub7
	note_type 12, 2, 0
	sound_call .sub7
	octave 2
	note_type 12, 2, 0
	sound_call .sub7
	octave 2
	note_type 12, 2, 0
	sound_call .sub7
	octave 2
	note_type 12, 2, 0
	sound_call .sub8
	note_type 12, 2, 0
	sound_call .sub8
	octave 2
	note_type 12, 2, 0
	sound_call .sub8
	octave 2
	note_type 12, 2, 0
	sound_call .sub8
	octave 2
	note_type 12, 2, 0
	sound_call .sub8
	octave 2
	note_type 12, 2, 0
	sound_call .sub8
	octave 2
	note_type 12, 2, 0
	sound_call .sub8
	octave 2
	note_type 12, 2, 0
	sound_call .sub8
	note_type 12, 2, 0
	sound_jump .mainLoop_ch3

.sub1:
	volume_envelope 1, 0
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	volume_envelope 2, 0
	note G#, 10
	sound_ret

.sub2:
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	volume_envelope 2, 0
	note G#, 10
	sound_ret

.sub3:
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	sound_ret

.sub4:
	transpose 0, 0
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	sound_ret

.sub5:
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	sound_ret

.sub6:
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	sound_ret

.sub7:
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	sound_ret

.sub8:
	note G#, 10
	volume_envelope 3, 1
	note G#, 2
	note G#, 1
	note G#, 1
	volume_envelope 1, 1
	note G#, 1
	volume_envelope 2, 1
	note G#, 2
	volume_envelope 1, 1
	note G#, 2
	volume_envelope 3, 1
	note G#, 1
	sound_ret

Music_OredaleCity_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
	rest 12
.mainLoop_ch4:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	toggle_noise
	toggle_noise 0
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	octave 5
	drum_note 8, 2
	drum_note 8, 2
	octave 6
	sound_call .sub2
	octave 6
	sound_call .sub1
	drum_speed 12
	octave 6
	sound_call .sub1
	drum_speed 12
	octave 6
	sound_call .sub1
	drum_speed 12
	octave 6
	sound_call .sub1
	drum_speed 12
	octave 6
	sound_call .sub3
	octave 6
	sound_call .sub3
	drum_speed 12
	octave 6
	sound_call .sub3
	drum_speed 12
	octave 6
	sound_call .sub3
	drum_speed 12
	octave 6
	sound_call .sub3
	drum_speed 12
	octave 5
	sound_call .sub4
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	octave 5
	sound_call .sub4
	drum_speed 12
	sound_jump .mainLoop_ch4

.sub1:
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 3, 2
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 3, 2
	octave 5
	drum_note 12, 2
	drum_note 12, 2
	drum_note 8, 2
	drum_note 8, 2
	sound_ret

.sub2:
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 3, 2
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 3, 2
	octave 5
	drum_note 12, 2
	drum_note 12, 2
	drum_note 8, 2
	drum_note 8, 2
	sound_ret

.sub3:
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 3, 2
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 3, 2
	octave 5
	drum_note 12, 2
	drum_note 12, 2
	drum_note 8, 2
	drum_note 8, 2
	sound_ret

.sub4:
	drum_note 8, 2
	octave 6
	drum_note 3, 2
	drum_note 3, 2
	octave 5
	drum_note 8, 2
	drum_note 12, 2
	octave 6
	sound_ret
