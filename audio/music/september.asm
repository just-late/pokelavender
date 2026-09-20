Music_September:
	channel_count 4
	channel 1, Music_September_Ch1
	channel 2, Music_September_Ch2
	channel 3, Music_September_Ch3
	channel 4, Music_September_Ch4

Music_September_Ch1:
	volume 7, 7
	note_type 12, 0, 8
	octave 4
	tempo 152
	note C#, 1
	rest 1
	volume_envelope 7, 2
	sound_call .sub1
	rest 2
	sound_call .sub1
	octave 4
	note_type 12, 7, 2
	rest 2
	sound_call .sub1
	octave 4
	note_type 12, 7, 2
	rest 2
	sound_call .sub1
	octave 4
	note_type 12, 7, 2
	rest 2
	sound_call .sub1
	octave 4
	note_type 12, 7, 2
	rest 2
	note A_, 1
	note A_, 1
	rest 1
	note A_, 1
	note A_, 1
	rest 1
	note A_, 1
	note A_, 1
	rest 1
	note A_, 1
	vibrato 2, 2, 3
	volume_envelope 12, 8
	note C_, 1
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 3
	octave 5
	note C_, 1
	note C_, 1
	octave 4
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 11
	note A_, 8
	rest 2
	volume_envelope 15, 8
	note A_, 16
	note A_, 2
	rest 2
	note A_, 5
	rest 1
	note A_, 2
	octave 3
	duty_cycle 2
	volume_envelope 13, 8
	note F#, 2
	note A_, 2
	note B_, 2
	octave 8
.mainLoop:
	octave 4
	volume_envelope 13, 4
	note C#, 2
	note C#, 2
	rest 10
	octave 3
	note A_, 2
	octave 4
	sound_call .sub2
	rest 6
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	sound_call .sub2
	octave 3
	note_type 12, 13, 4
	rest 6
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note E_, 2
	note F#, 2
	octave 3
	note B_, 4
	note A_, 4
	note B_, 2
	volume_envelope 10, 8
	note B_, 2
	note A_, 14
	note A_, 4
	rest 6
	octave 4
	volume_envelope 13, 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note C#, 2
	note C#, 2
	rest 6
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note C#, 4
	note E_, 2
	note F#, 2
	octave 3
	note B_, 2
	volume_envelope 13, 8
	note A_, 4
	octave 4
	note C#, 2
	note D_, 4
	volume_envelope 13, 5
	note C#, 4
	rest 6
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note E_, 2
	note F#, 2
	octave 3
	note B_, 2
	volume_envelope 13, 8
	note A_, 6
	octave 4
	volume_envelope 13, 4
	note C#, 2
	note C#, 2
	note C#, 2
	rest 8
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note E_, 2
	note F#, 2
	octave 3
	note B_, 2
	volume_envelope 13, 8
	note A_, 4
	note B_, 2
	note A_, 2
	note A_, 16
	rest 2
	octave 4
	volume_envelope 13, 4
	note F#, 2
	rest 2
	note A_, 2
	rest 2
	note B_, 2
	note A_, 2
	rest 2
	octave 5
	volume_envelope 13, 8
	vibrato 2, 2, 3
	sound_call .sub3
	rest 2
	octave 5
	sound_call .sub3
	note_type 12, 13, 8
	rest 2
	octave 5
	note C#, 4
	note D_, 2
	note C#, 6
	rest 4
	note C#, 2
	note D_, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 4
	note F#, 2
	note B_, 2
	note A_, 16
	note A_, 10
	rest 6
	volume_envelope 13, 7
	sound_call .sub4
	vibrato 2, 2, 3
	duty_cycle 2
	sound_call .sub4
	octave 4
	note_type 12, 13, 7
	note A_, 4
	note F#, 2
	note E_, 2
	note A_, 4
	note F#, 2
	note E_, 2
	rest 2
	note B_, 2
	note F#, 2
	note A_, 6
	rest 2
	octave 3
	volume_envelope 15, 2
	duty_cycle 0
	note A_, 1
	rest 1
	note A_, 1
	rest 5
	note A_, 1
	rest 1
	note A_, 1
	rest 9
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	volume_envelope 13, 7
	duty_cycle 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	sound_jump .mainLoop

.sub1:
	note A_, 1
	note A_, 1
	rest 1
	note A_, 1
	note A_, 1
	rest 1
	note A_, 1
	note A_, 1
	rest 1
	note A_, 3
	note A_, 1
	note A_, 1
	sound_ret

.sub2:
	note C#, 2
	note E_, 2
	note F#, 2
	octave 3
	note B_, 4
	note A_, 4
	note A_, 2
	octave 4
	note C#, 2
	note C#, 4
	sound_ret

.sub3:
	note C#, 4
	note D_, 2
	note C#, 6
	rest 4
	note C#, 2
	note D_, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 4
	volume_envelope 13, 4
	note B_, 2
	sound_ret

.sub4:
	volume_envelope 13, 7
	note A_, 4
	note F#, 2
	volume_envelope 10, 7
	note E_, 2
	volume_envelope 13, 7
	note A_, 4
	note F#, 2
	volume_envelope 10, 7
	note E_, 2
	rest 2
	volume_envelope 13, 7
	note A_, 2
	volume_envelope 11, 7
	note F#, 2
	volume_envelope 13, 7
	note E_, 2
	note A_, 4
	note F#, 2
	volume_envelope 10, 7
	note E_, 2
	sound_ret

Music_September_Ch2:
	note_type 12, 15, 8
	rest 16
	rest 16
	rest 16
	rest 16
	vibrato 2, 2, 3
	rest 16
	rest 12
	octave 3
	volume_envelope 9, 8
	note C_, 1
	note C_, 1
	octave 2
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 11
	octave 3
	note C_, 1
	note C_, 1
	octave 2
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 11
	rest 2
	octave 4
	volume_envelope 6, 8
	note F#, 16
	note F#, 2
	rest 2
	note F#, 5
	rest 1
	note F#, 2
	rest 6
	octave 8
.mainLoop:
	rest 2
	octave 3
	note_type 6, 6, 4
	sound_call .sub2
	note_type 12, 6, 4
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub1
	note_type 12, 6, 4
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub1
	note_type 12, 6, 4
	rest 4
	octave 4
	note_type 6, 15, 8
	rest 8
	duty_cycle 0
	note A_, 8
	note A_, 16
	note A_, 8
	rest 8
	note_type 6, 11, 4
	note A_, 4
	note_type 12, 6, 4
	rest 2
	note_type 6, 11, 4
	note A_, 4
	note_type 12, 6, 4
	rest 4
	octave 3
	note_type 6, 6, 4
	sound_call .sub3
	note_type 12, 6, 4
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub2
	note_type 12, 6, 4
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub2
	note_type 12, 6, 4
	rest 16
	rest 16
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub3
	note_type 12, 6, 4
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub3
	note_type 12, 6, 4
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub6
	note_type 12, 6, 4
	rest 6
	note_type 6, 6, 4
	note A_, 4
	note F#, 4
	note A_, 4
	note_type 12, 6, 4
	rest 2
	note_type 6, 6, 4
	note A_, 4
	note F#, 4
	note A_, 4
	note_type 12, 6, 4
	rest 2
	note_type 6, 6, 4
	note A_, 4
	note F#, 4
	note A_, 4
	octave 3
	note A_, 4
	note A_, 4
	note A_, 4
	note_type 12, 6, 4
	rest 4
	note_type 6, 6, 4
	sound_call .sub6
	note_type 12, 6, 4
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub6
	note_type 12, 6, 4
	rest 6
	octave 3
	note_type 6, 6, 4
	sound_call .sub6
	octave 2
	note_type 12, 6, 4
	rest 4
	note_type 6, 10, 2
	transpose 0, 10
	note B_, 2
	note B_, 2
	octave 3
	note C#, 2
	note D#, 2
	sound_call .sub4
	note B_, 2
	note B_, 2
	note G#, 2
	note D#, 2
	octave 3
	note_type 6, 6, 4
	sound_call .sub4
	note_type 6, 6, 4
	sound_call .sub5
	octave 3
	note_type 6, 6, 4
	sound_call .sub5
	octave 3
	note_type 6, 6, 4
	sound_call .sub5
	octave 3
	note_type 6, 6, 4
	sound_call .sub5
	octave 8
	note_type 12, 6, 4
	sound_jump .mainLoop

.sub1:
	note C#, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 12
	octave 2
	note_type 6, 6, 4
	note B_, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 12
	note_type 6, 6, 4
	note A_, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 6
	note_type 6, 6, 4
	rest 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note B_, 4
	note B_, 4
	note B_, 4
	volume_envelope 6, 8
	note G#, 8
	volume_envelope 6, 4
	note A_, 4
	sound_ret

.sub2:
	transpose 0, 0
	note C#, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 12
	octave 2
	note_type 6, 6, 4
	note B_, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 12
	note_type 6, 6, 4
	note A_, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 6
	note_type 6, 6, 4
	rest 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note B_, 4
	note B_, 4
	note B_, 4
	volume_envelope 6, 8
	note G#, 8
	volume_envelope 6, 4
	note A_, 4
	sound_ret

.sub3:
	note C#, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 12
	octave 2
	note_type 6, 6, 4
	note B_, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 12
	note_type 6, 6, 4
	note A_, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 6
	note_type 6, 6, 4
	rest 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note B_, 4
	note B_, 4
	note B_, 4
	volume_envelope 6, 8
	note G#, 8
	volume_envelope 6, 4
	note A_, 4
	sound_ret

.sub4:
	volume_envelope 10, 2
	note F#, 2
	note_type 6, 10, 2
	note F#, 2
	note G#, 2
	note F#, 2
	sound_ret

.sub5:
	volume_envelope 7, 2
	note B_, 2
	note_type 6, 7, 2
	note B_, 2
	note G#, 2
	octave 3
	note F#, 2
	sound_ret

.sub6:
	note C#, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 12
	octave 2
	note_type 6, 6, 4
	note B_, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 12
	note_type 6, 6, 4
	note A_, 4
	note_type 12, 6, 4
	rest 1
	note_type 1, 6, 4
	rest 6
	note_type 6, 6, 4
	rest 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note B_, 4
	note B_, 4
	note B_, 4
	note G#, 8
	note A_, 4
	sound_ret

Music_September_Ch3:
	note_type 12, 1, 0
	octave 4
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	octave 3
	note B_, 3
	rest 1
	note A_, 3
	rest 1
	note G#, 1
	note_type 6, 1, 0
	note A_, 1
	note A#, 1
	note B_, 2
	rest 2
	note B_, 2
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note A_, 2
	rest 2
	note G#, 7
	rest 1
	note A_, 7
	rest 4
	octave 4
	sound_call .sub1
	rest 4
	octave 4
	sound_call .sub1
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	octave 2
	rest 1
	sound_call .sub2
	note_type 12, 1, 0
	rest 3
	note_type 6, 1, 0
	rest 3
	sound_call .sub2
	octave 8
	note_type 12, 1, 0
	rest 4
	note_type 1, 1, 0
	rest 6
	note_type 12, 1, 0
.mainLoop:
	note_type 6, 1, 0
	octave 2
	sound_call .sub5
	octave 2
	sound_call .sub3
	octave 2
	note_type 6, 1, 0
	sound_call .sub6
	vibrato 0, 0, 0
	rest 1
	sound_call .sub7
	octave 1
	note_type 6, 1, 0
	sound_call .sub4
	octave 1
	note_type 6, 1, 0
	sound_call .sub4
	note_type 12, 1, 0
	rest 8
	octave 2
	note_type 6, 1, 0
	sound_call .sub5
	octave 2
	note_type 6, 1, 0
	sound_call .sub5
	note_type 6, 1, 0
	octave 2
	sound_call .sub6
	note_type 6, 1, 0
	rest 1
	octave 1
	sound_call .sub7
	octave 1
	note_type 6, 1, 0
	sound_call .sub7
	octave 1
	note_type 6, 1, 0
	sound_call .sub7
	octave 1
	note_type 6, 1, 0
	note A_, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	note G#, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	sound_call .sub8
	octave 1
	note_type 6, 1, 0
	sound_call .sub9
	sound_call .sub9
	octave 1
	note_type 6, 1, 0
	note A_, 3
	rest 1
	note A_, 3
	rest 1
	octave 2
	volume_envelope 2, 0
	note B_, 3
	rest 1
	octave 3
	note C#, 3
	octave 1
	rest 1
	volume_envelope 1, 0
	note A_, 3
	rest 1
	note A_, 3
	rest 1
	octave 2
	volume_envelope 2, 0
	note B_, 3
	rest 1
	octave 3
	note C#, 3
	note_type 1, 1, 0
	rest 6
	octave 1
	note_type 6, 1, 0
	note A_, 3
	rest 1
	note A_, 3
	octave 2
	rest 1
	volume_envelope 2, 0
	note B_, 3
	octave 3
	rest 1
	note C#, 3
	octave 1
	rest 1
	volume_envelope 1, 0
	note A_, 3
	rest 1
	note A_, 3
	rest 1
	note A_, 3
	note_type 1, 1, 0
	rest 16
	rest 14
	octave 2
	note_type 6, 1, 0
	sound_call .sub10
	octave 2
	note_type 6, 1, 0
	sound_call .sub10
	octave 2
	note_type 6, 1, 0
	sound_call .sub10
	note_type 6, 1, 0
	sound_call .sub11
	rest 1
	octave 1
	sound_call .sub11
	note_type 6, 2, 0
	rest 1
	octave 1
	sound_call .sub11
	note_type 6, 2, 0
	rest 1
	octave 1
	sound_call .sub11
	note_type 6, 2, 0
	rest 1
	octave 8
	note_type 12, 1, 0
	sound_jump .mainLoop

.sub1:
	note C_, 1
	note C#, 2
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note C#, 2
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note C#, 2
	note_type 12, 1, 0
	rest 1
	octave 3
	note_type 6, 1, 0
	note B_, 6
	rest 2
	note A_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note G#, 2
	note A_, 1
	note A#, 1
	note B_, 2
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note B_, 2
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note A_, 2
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note G#, 7
	rest 1
	note A_, 7
	sound_ret

.sub2:
	note A_, 3
	rest 1
	note A_, 3
	note_type 12, 1, 0
	rest 4
	note_type 6, 1, 0
	rest 1
	note A_, 3
	rest 1
	note A_, 3
	note_type 12, 1, 0
	rest 4
	note_type 6, 1, 0
	rest 1
	note A_, 3
	rest 1
	note A_, 3
	rest 5
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 0
	rest 3
	note A_, 3
	rest 1
	note A_, 3
	sound_ret

.sub3:
	note D_, 3
	rest 1
	note D_, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	note C#, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	octave 1
	note B_, 3
	rest 1
	note_type 12, 1, 0
	rest 1
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 0
	rest 1
	note B_, 3
	octave 2
	rest 1
	note C#, 3
	rest 1
	octave 1
	note E_, 3
	rest 1
	note F_, 3
	rest 5
	note F#, 7
	rest 1
	note A_, 3
	rest 1
	note B_, 3
	vibrato 0, 0, 0
	note A_, 1
	sound_ret

.sub4:
	note A_, 3
	rest 1
	note A_, 3
	octave 2
	rest 1
	note A_, 3
	rest 1
	note A_, 3
	rest 1
	octave 1
	sound_ret

.sub5:
	note D_, 3
	rest 1
	note D_, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	note C#, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	octave 1
	note B_, 3
	rest 1
	note_type 12, 1, 0
	rest 1
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 0
	rest 1
	note B_, 3
	octave 2
	rest 1
	note C#, 3
	rest 1
	octave 1
	note E_, 3
	rest 1
	note F_, 3
	rest 5
	note F#, 7
	rest 1
	note A_, 3
	rest 1
	note B_, 3
	vibrato 0, 0, 0
	rest 1
	sound_ret

.sub6:
	note D_, 3
	rest 1
	note D_, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	note C#, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	octave 1
	note B_, 3
	rest 1
	note_type 12, 1, 0
	rest 1
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 0
	rest 1
	note B_, 3
	octave 2
	rest 1
	note C#, 3
	rest 1
	note E_, 3
	rest 1
	note F_, 3
	rest 5
	note F#, 7
	rest 1
	note C#, 3
	octave 1
	rest 1
	note B_, 3
	sound_ret

.sub7:
	note A_, 3
	rest 1
	note A_, 3
	octave 2
	rest 1
	note A_, 3
	rest 1
	note A_, 3
	rest 1
	sound_ret

.sub8:
	note B_, 7
	rest 1
	octave 2
	note F#, 3
	rest 1
	note E_, 3
	rest 1
	note_type 12, 1, 0
	rest 2
	octave 1
	note_type 6, 1, 0
	note F#, 3
	rest 1
	note A_, 3
	rest 1
	note B_, 3
	octave 2
	rest 1
	note C#, 3
	octave 1
	rest 1
	note F#, 3
	rest 1
	note A_, 3
	rest 1
	note F#, 3
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 0
	note A_, 7
	rest 1
	note B_, 3
	rest 1
	note A_, 4
	sound_ret

.sub9:
	note B_, 7
	rest 1
	octave 2
	note F#, 3
	rest 1
	note E_, 3
	rest 1
	note_type 12, 1, 0
	rest 2
	octave 1
	note_type 6, 1, 0
	note F#, 3
	rest 1
	note A_, 3
	rest 1
	note B_, 3
	octave 2
	rest 1
	note C#, 3
	octave 1
	rest 1
	note F#, 3
	rest 1
	note A_, 3
	rest 1
	note F#, 3
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 0
	note A_, 7
	rest 1
	note B_, 3
	rest 1
	octave 2
	note C#, 3
	octave 1
	rest 1
	sound_ret

.sub10:
	note D_, 3
	rest 1
	note D_, 3
	rest 1
	note D_, 3
	rest 1
	note C#, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	octave 1
	note B_, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	note B_, 3
	note_type 1, 1, 0
	rest 6
	octave 2
	note_type 6, 1, 0
	note C#, 3
	octave 1
	rest 1
	note E_, 3
	rest 1
	note F_, 3
	note_type 12, 1, 0
	rest 2
	note_type 6, 1, 0
	rest 1
	note F#, 7
	rest 1
	note A_, 3
	note_type 1, 1, 0
	rest 6
	note_type 6, 1, 0
	note B_, 4
	sound_ret

.sub11:
	volume_envelope 1, 0
	note A_, 3
	rest 1
	note A_, 3
	rest 1
	octave 2
	volume_envelope 2, 0
	note B_, 3
	rest 1
	octave 3
	note C#, 3
	sound_ret

Music_September_Ch4:
	toggle_noise 0
	drum_speed 12
	octave 5
	stereo_panning TRUE, TRUE
	sound_call .sub1
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	drum_note 8, 4
	drum_note 12, 4
	drum_note 8, 4
	drum_note 12, 4
	drum_note 8, 4
	drum_note 12, 4
	drum_note 8, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_call .sub2
	sound_call .sub3
	drum_speed 12
	octave 8
.mainLoop:
	octave 5
	sound_call .sub3
	drum_speed 12
	octave 5
	sound_call .sub3
	drum_speed 12
	octave 5
	sound_call .sub3
	drum_speed 12
	octave 5
	sound_call .sub3
	drum_speed 12
	octave 5
	sound_call .sub3
	drum_speed 12
	octave 5
	sound_call .sub3
	drum_speed 12
	octave 5
	sound_call .sub3
	drum_speed 12
	octave 5
	sound_call .sub3
	drum_speed 12
	sound_call .sub4
	sound_call .sub4
	drum_speed 12
	sound_call .sub4
	drum_speed 12
	sound_call .sub4
	drum_speed 12
	sound_call .sub4
	drum_speed 12
	sound_call .sub4
	drum_speed 12
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	sound_call .sub5
	sound_call .sub5
	octave 5
	drum_speed 12
	sound_call .sub5
	octave 5
	drum_speed 12
	sound_call .sub5
	octave 5
	drum_speed 12
	sound_call .sub5
	octave 5
	drum_speed 12
	sound_call .sub5
	octave 5
	drum_speed 12
	sound_call .sub5
	octave 5
	drum_speed 12
	sound_call .sub5
	octave 5
	drum_speed 12
	sound_jump .mainLoop

.sub1:
	drum_note 12, 4
	drum_note 12, 4
	drum_note 12, 4
	drum_note 12, 4
	sound_ret

.sub2:
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	sound_ret

.sub3:
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	sound_ret

.sub4:
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	sound_ret

.sub5:
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 12, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 12, 2
	sound_ret
