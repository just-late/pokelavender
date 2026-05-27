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
	duty_cycle 1
	tempo 200
	rest 16
	rest 16
	rest 16
	rest 16
	octave 4
	volume_envelope 9, 8
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 10
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 10
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 10
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 10
	octave 3
	volume_envelope 7, 8
	duty_cycle 2
	vibrato 3, 1, 1
	transpose 1, 0
	sound_call .sub1
	octave 3
	sound_call .sub2
	note_type 12, 7, 8
	octave 3
	note C_, 16
	octave 2
	note B_, 16
	note A_, 16
	note G_, 8
	note A_, 1
	octave 3
	note C_, 1
	note E_, 1
	note G_, 1
	note_type 6, 7, 8
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	note_type 12, 7, 8
	sound_call .sub3
	sound_call .sub3
	note_type 12, 7, 8
	sound_call .sub4
	octave 4
	sound_call .sub4
	note_type 12, 7, 8
	octave 4
	sound_call .sub5
	octave 4
	sound_call .sub5
	note_type 12, 7, 8
	octave 4
	sound_call .sub6
	volume_envelope 4, 8
	note G_, 1
	note B_, 1
	octave 5
	note D_, 1
	note F_, 1
	note_type 6, 4, 8
	note G_, 1
	note A_, 1
	note B_, 1
	octave 6
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 2
	octave 3
	note_type 12, 4, 8
	transpose 2, 0
	note E_, 16
	note_type 12, 7, 8
	note D_, 16
	note C_, 16
	note G_, 12
	note A_, 4
	note B_, 16
	note A_, 16
	note G_, 16
	note E_, 16
	octave 2
	sound_loop 0, .mainLoop

.sub1:
	note C_, 16
	octave 2
	note B_, 16
	note A_, 16
	note G_, 16
	sound_ret

.sub2:
	note C_, 16
	octave 2
	note B_, 16
	note A_, 16
	note G_, 16
	sound_ret

.sub3:
	transpose 0, 0
	octave 5
	duty_cycle 3
	volume_envelope 4, 8
	note C_, 1
	note E_, 1
	note G_, 1
	note B_, 1
	octave 6
	note C_, 1
	octave 5
	note B_, 1
	note G_, 1
	note E_, 1
	octave 4
	sound_ret

.sub4:
	vibrato 3, 1, 1
	volume_envelope 4, 8
	note B_, 1
	octave 5
	note D_, 1
	note F_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note F_, 1
	note D_, 1
	sound_ret

.sub5:
	volume_envelope 4, 8
	note A_, 1
	octave 5
	note C_, 1
	note E_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note E_, 1
	note C_, 1
	sound_ret

.sub6:
	volume_envelope 4, 8
	note G_, 1
	note B_, 1
	octave 5
	note D_, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note D_, 1
	octave 4
	note B_, 1
	sound_ret

Music_GemrootTown_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 3
	duty_cycle 1
	vibrato 4, 1, 1
	volume_envelope 7, 8
	transpose 1, 0
	sound_call .sub2
	sound_call .sub1
	note_type 12, 7, 8
	octave 3
	sound_call .sub3
	octave 3
	sound_call .sub4
	note_type 12, 7, 8
	sound_call .sub4
	octave 3
	note_type 12, 7, 8
	sound_call .sub4
	note_type 12, 7, 8
	octave 5
	transpose 1, 0
	sound_call .sub5
	sound_call .sub5
	octave 5
	note_type 12, 4, 8
	sound_call .sub6
	sound_call .sub6
	note_type 12, 4, 8
	note G_, 1
	note B_, 1
	octave 6
	note D_, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note D_, 1
	octave 5
	note B_, 1
	volume_envelope 12, 8
	note G_, 1
	note F_, 1
	note D_, 1
	octave 4
	note B_, 1
	note_type 6, 4, 8
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	octave 3
	rest 1
	note B_, 1
	note A_, 1
	note G_, 1
	note_type 12, 12, 8
	octave 2
	transpose 1, 0
	note B_, 1
	octave 3
	note D_, 1
	note E_, 10
	note D_, 4
	sound_call .sub4
	octave 3
	note_type 12, 7, 8
	sound_loop 0, .mainLoop

.sub2:
	note E_, 16
	note D_, 16
	note C_, 16
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note E_, 10
	note D_, 4
	sound_ret

.sub1:
	note E_, 16
	note D_, 16
	note C_, 16
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note E_, 10
	note D_, 4
	sound_ret

.sub3:
	note E_, 16
	note D_, 16
	note C_, 16
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note E_, 10
	note D_, 4
	sound_ret

.sub4:
	note E_, 16
	note D_, 16
	note C_, 16
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note E_, 10
	note D_, 4
	sound_ret

.sub5:
	volume_envelope 4, 8
	transpose 2, 0
	note E_, 1
	note G_, 1
	note B_, 1
	octave 6
	note D_, 1
	note E_, 1
	note D_, 1
	octave 5
	note B_, 1
	note G_, 1
	sound_ret

.sub6:
	note F_, 1
	note A_, 1
	octave 6
	note C_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note C_, 1
	octave 5
	note A_, 1
	sound_ret

Music_GemrootTown_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 3
	sound_call .sub1
	octave 3
	sound_call .sub1
	note_type 12, 1, 0
	rest 16
	rest 16
	rest 16
	rest 16
	octave 5
	sound_call .sub2
	sound_call .sub2
	octave 5
	note_type 12, 1, 0
	sound_call .sub2
	octave 5
	note_type 12, 1, 0
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 10
	note F_, 2
	note G_, 2
	note A_, 2
	note B_, 10
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 10
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	note D_, 2
	note E_, 10
	sound_call .sub2
	octave 5
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
	note C_, 16
	octave 2
	note B_, 16
	note A_, 16
	note G_, 16
	sound_ret

.sub2:
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 10
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 10
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 10
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	note D_, 2
	note E_, 10
	sound_ret

Music_GemrootTown_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 14
	octave 5
	toggle_noise
	toggle_noise 1
	drum_note 6, 2
	drum_note 6, 2
	rest 16
	rest 16
	rest 16
	rest 12
	drum_note 6, 2
	drum_note 6, 2
	rest 16
	rest 16
	rest 16
	rest 12
	octave 4
	drum_note 6, 2
	sound_call .sub1
	sound_call .sub2
	drum_speed 12
	sound_call .sub2
	octave 4
	drum_speed 12
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	rest 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_speed 6
	drum_note 6, 1
	drum_note 6, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 4
	drum_note 1, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 2
	drum_note 6, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 2
	drum_note 6, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 6, 2
	drum_note 6, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_speed 12
	drum_note 6, 2
	drum_note 1, 2
	drum_note 1, 1
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_speed 12
	drum_note 6, 2
	drum_note 1, 2
	rest 2
	drum_note 6, 2
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	rest 4
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 2
	rest 4
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	rest 2
	drum_note 6, 2
	rest 4
	drum_note 1, 2
	drum_note 6, 2
	rest 4
	drum_note 1, 2
	drum_note 6, 2
	rest 2
	drum_note 6, 2
	drum_note 6, 2
	sound_loop 0, .mainLoop

.sub1:
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	rest 2
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	rest 2
	drum_note 6, 2
	rest 2
	drum_note 1, 2
	rest 2
	drum_note 6, 2
	drum_note 1, 2
	rest 2
	drum_note 6, 2
	sound_ret

.sub2:
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	rest 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 6, 2
	rest 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 1, 2
	rest 2
	drum_note 6, 2
	sound_ret
