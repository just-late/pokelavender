Music_MtLavender:
	channel_count 4
	channel 1, Music_MtLavender_Ch1
	channel 2, Music_MtLavender_Ch2
	channel 3, Music_MtLavender_Ch3
	channel 4, Music_MtLavender_Ch4

Music_MtLavender_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop_Ch1:
	duty_cycle 1
	vibrato 1, 2, 1
	tempo 160
	octave 3
	transpose 2, 0
	sound_call .sub10
	sound_call .sub1
	note_type 12, 15, 8
	sound_call .sub2
	note_type 12, 15, 8
	octave 3
	sound_call .sub3
	octave 3
	sound_call .sub3
	note_type 12, 15, 8
	octave 3
	sound_call .sub4
	octave 3
	sound_call .sub4
	note_type 12, 15, 8
	octave 3
	sound_call .sub4
	note_type 12, 15, 8
	octave 3
	sound_call .sub5
	octave 3
	sound_call .sub6
	note_type 12, 15, 8
	octave 3
	sound_call .sub6
	note_type 12, 15, 8
	rest 3
	octave 4
	transpose 1, 0
	volume_envelope 9, 8
	note D#, 1
	rest 1
	note D#, 3
	rest 3
	note C_, 1
	rest 1
	note C_, 3
	rest 3
	octave 3
	note B_, 1
	rest 1
	note B_, 3
	rest 3
	octave 4
	note C_, 1
	rest 1
	note C_, 3
	octave 3
	transpose 2, 0
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	rest 4
	octave 2
	sound_call .sub7
	rest 4
	octave 2
	sound_call .sub7
	note_type 12, 9, 8
	rest 4
	octave 2
	sound_call .sub7
	note_type 12, 9, 8
	rest 4
	octave 2
	sound_call .sub9
	octave 4
	note D#, 5
	octave 2
	sound_call .sub8
	rest 2
	octave 4
	note C_, 1
	note C_, 1
	rest 1
	octave 2
	sound_call .sub9
	note_type 12, 9, 8
	rest 5
	octave 2
	sound_call .sub9
	note_type 12, 9, 8
	rest 5
	octave 2
	sound_call .sub9
	note_type 12, 9, 8
	rest 5
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	vibrato 1, 2, 1
	duty_cycle 1
	note D#, 1
	rest 1
	note C_, 1
	note D#, 1
	sound_call .sub10
	octave 3
	note_type 12, 9, 8
	sound_call .sub10
	octave 3
	note_type 12, 9, 8
	sound_call .sub10
	octave 3
	note_type 12, 9, 8
	sound_call .sub11
	sound_call .sub10
	note_type 12, 9, 8
	sound_call .sub11
	octave 3
	note_type 12, 9, 8
	sound_call .sub11
	octave 3
	note_type 12, 9, 8
	sound_call .sub11
	octave 3
	note_type 12, 9, 8
	sound_call .sub11
	octave 3
	note_type 12, 9, 8
	sound_call .sub11
	octave 3
	note_type 12, 9, 8
	sound_jump .mainLoop_Ch1

.sub1:
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note F#, 2
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note G_, 2
	sound_ret

.sub2:
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note F#, 2
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note G_, 2
	sound_ret

.sub3:
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note F#, 2
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note G_, 2
	sound_ret

.sub4:
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note F#, 2
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note G_, 2
	sound_ret

.sub5:
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note F#, 2
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note G_, 2
	sound_ret

.sub6:
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note F#, 2
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note G_, 2
	sound_ret

.sub7:
	note B_, 1
	octave 3
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	sound_ret

.sub9:
	note B_, 1
	octave 3
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	sound_ret

.sub8:
	note B_, 1
	octave 3
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	note_type 12, 9, 8
	vibrato 1, 2, 1
	duty_cycle 1
	note D#, 1
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	sound_ret

.sub10:
	tempo 160
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note F#, 2
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note G_, 2
	sound_ret

.sub11:
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note F#, 2
	note C_, 2
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note G_, 2
	sound_ret

Music_MtLavender_Ch2:
	note_type 12, 15, 8
.mainLoop_Ch2:
	vibrato 2, 1, 1
	volume_envelope 9, 8
	rest 16
	rest 16
	rest 8
	octave 4
	note D#, 8
	duty_cycle 0
	note C_, 2
	rest 1
	note D#, 1
	rest 2
	note D#, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	note B_, 1
	octave 4
	note C_, 2
	rest 2
	note C_, 2
	rest 1
	note D#, 1
	rest 2
	note D#, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	note B_, 1
	octave 4
	note D#, 2
	note_type 12, 9, 8
	rest 2
	note F#, 2
	rest 1
	note F_, 1
	rest 2
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	note B_, 1
	octave 4
	note C_, 2
	rest 2
	note F#, 2
	rest 1
	note G_, 1
	rest 2
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note F_, 1
	note D#, 1
	note C_, 4
	rest 16
	rest 8
	note F#, 8
	note D#, 1
	rest 2
	note D#, 1
	note F#, 2
	note F_, 1
	note D#, 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	note F_, 1
	note F#, 2
	note G_, 1
	rest 2
	note G_, 1
	note F#, 2
	note F_, 1
	note D#, 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	note C_, 1
	note F_, 2
	note F#, 1
	rest 2
	note G_, 1
	rest 1
	note G_, 3
	rest 3
	note F#, 1
	rest 1
	note F#, 3
	rest 3
	note D#, 1
	rest 1
	note D#, 3
	rest 3
	octave 5
	note C_, 1
	rest 1
	note C_, 3
	rest 16
	rest 16
	rest 16
	rest 16
	octave 4
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	note F#, 6
	note C_, 1
	note D#, 1
	rest 1
	note C_, 1
	note D#, 1
	note F_, 1
	note F#, 1
	note D#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note C_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	note C_, 1
	rest 4
	sound_call .sub1
	rest 4
	sound_call .sub1
	note_type 12, 9, 8
	rest 13
	sound_call .sub2
	rest 6
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note D#, 2
	note C_, 2
	rest 6
	sound_call .sub2
	octave 4
	note_type 12, 9, 8
	rest 6
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	note F_, 1
	note F#, 2
	note C_, 2
	rest 6
	sound_call .sub3
	rest 6
	sound_call .sub3
	octave 4
	note_type 12, 9, 8
	rest 6
	sound_call .sub3
	octave 4
	note_type 12, 9, 8
	rest 6
	sound_call .sub3
	octave 4
	note_type 12, 9, 8
	rest 6
	sound_call .sub3
	note_type 12, 9, 8
	rest 2
	note_type 3, 9, 8
	note C_, 7
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	note_type 12, 9, 8
	octave 5
	note C_, 1
	rest 2
	note C_, 1
	note C_, 1
	rest 1
	note C_, 2
	note D#, 8
	octave 4
	sound_jump .mainLoop_Ch2

.sub1:
	note C_, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	note C_, 1
	sound_ret

.sub2:
	note C_, 1
	rest 2
	note C_, 1
	note C_, 1
	rest 1
	note C_, 2
	note C_, 2
	sound_ret

.sub3:
	note C_, 1
	rest 2
	note C_, 1
	note C_, 1
	rest 1
	note C_, 2
	note C_, 2
	sound_ret

Music_MtLavender_Ch3:
	note_type 12, 1, 0
.mainLoop_Ch3:
	octave 3
	sound_call .sub11
	rest 1
	sound_call .sub1
	note_type 12, 1, 0
	rest 1
	sound_call .sub2
	note_type 12, 1, 0
	rest 1
	sound_call .sub2
	note_type 12, 1, 0
	rest 1
	sound_call .sub2
	note_type 12, 1, 0
	rest 1
	sound_call .sub3
	rest 1
	octave 3
	sound_call .sub3
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub3
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub3
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub4
	rest 1
	octave 3
	sound_call .sub5
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub5
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub5
	note_type 12, 1, 0
	octave 2
	sound_call .sub9
	rest 4
	octave 2
	sound_call .sub7
	note_type 12, 1, 0
	rest 4
	octave 2
	sound_call .sub8
	note_type 12, 1, 0
	rest 4
	octave 2
	sound_call .sub8
	note_type 12, 1, 0
	rest 4
	octave 2
	sound_call .sub6
	note_type 12, 1, 0
	rest 4
	octave 2
	sound_call .sub10
	rest 4
	octave 2
	sound_call .sub10
	note_type 12, 1, 0
	rest 4
	octave 2
	sound_call .sub10
	note_type 12, 1, 0
	rest 4
	octave 2
	sound_call .sub10
	note_type 12, 1, 0
	rest 4
	octave 2
	note B_, 1
	octave 3
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	sound_call .sub13
	rest 1
	sound_call .sub11
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub11
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub12
	rest 1
	octave 3
	sound_call .sub12
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub13
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub13
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub13
	note_type 12, 1, 0
	rest 1
	octave 3
	sound_call .sub14
	rest 1
	octave 3
	sound_call .sub14
	octave 8
	note_type 12, 1, 0
	rest 1
	sound_jump .mainLoop_Ch3

.sub1:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

.sub2:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

.sub3:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

.sub4:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

.sub5:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

.sub6:
	note B_, 1
	octave 3
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	sound_ret

.sub7:
	note B_, 1
	octave 3
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	sound_ret

.sub8:
	note B_, 1
	octave 3
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	sound_ret

.sub9:
	note B_, 1
	octave 3
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	sound_ret

.sub10:
	note B_, 1
	octave 3
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C_, 2
	sound_ret

.sub11:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

.sub12:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

.sub13:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

.sub14:
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note C_, 1
	rest 2
	note C_, 1
	note D#, 1
	rest 1
	note G_, 1
	sound_ret

Music_MtLavender_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop_Ch4:
	rest 16
	rest 16
	rest 16
	octave 5
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	sound_call .sub2
	drum_speed 12
	sound_call .sub2
	drum_speed 6
	drum_note 8, 4
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 8, 4
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 8, 4
	octave 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	octave 5
	drum_note 8, 4
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 8, 4
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 8, 4
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 4
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 4
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 4
	drum_speed 12
	sound_call .sub3
	rest 2
	sound_call .sub3
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 2
	octave 5
	sound_call .sub4
	octave 5
	sound_call .sub4
	drum_speed 12
	rest 1
	octave 5
	sound_call .sub5
	rest 4
	octave 5
	drum_note 8, 1
	rest 1
	drum_note 8, 1
	rest 2
	drum_note 8, 1
	rest 2
	drum_note 8, 1
	rest 1
	toggle_noise
	toggle_noise 0
	drum_speed 12
	drum_note 8, 1
	drum_note 8, 1
	rest 13
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	octave 6
	drum_note 1, 1
	drum_note 1, 1
	octave 5
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 2
	sound_jump .mainLoop_Ch4

.sub1:
	drum_note 8, 2
	rest 1
	drum_note 8, 1
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 8, 2
	rest 1
	drum_note 8, 1
	octave 6
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 4
	octave 5
	drum_note 9, 1
	drum_note 9, 1
	drum_note 8, 2
	sound_ret

.sub2:
	drum_note 8, 2
	rest 1
	drum_note 8, 1
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 8, 2
	rest 1
	drum_note 8, 1
	octave 6
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 4
	octave 5
	drum_note 9, 1
	drum_note 9, 1
	drum_note 8, 2
	sound_ret

.sub3:
	drum_note 8, 2
	rest 1
	drum_note 8, 1
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 8, 2
	drum_note 8, 2
	rest 1
	drum_note 8, 1
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 8, 2
	drum_note 8, 2
	rest 1
	drum_note 8, 1
	octave 6
	drum_note 1, 1
	rest 1
	drum_note 1, 2
	octave 5
	drum_note 10, 1
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 10, 1
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 8, 2
	sound_ret

.sub4:
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	drum_note 8, 2
	rest 2
	octave 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	sound_ret

.sub5:
	drum_note 8, 1
	rest 2
	drum_note 8, 1
	rest 2
	drum_note 8, 1
	rest 1
	drum_note 8, 1
	drum_note 8, 1
	rest 4
	drum_note 8, 1
	rest 1
	octave 5
	drum_note 8, 1
	rest 2
	drum_note 8, 1
	rest 2
	drum_note 8, 1
	rest 1
	drum_note 8, 1
	drum_note 8, 1
	octave 6
	sound_ret
