Music_cave:
	channel_count 4
	channel 1, Music_cave_Ch1
	channel 2, Music_cave_Ch2
	channel 3, Music_cave_Ch3
	channel 4, Music_cave_Ch4

Music_cave_Ch1:
	volume 7, 7
	note_type 12, 10, 8
	octave 3
	duty_cycle 1
	vibrato 1, 1, 1
	tempo 200
	note F_, 9
	note F#, 3
	rest 16
	rest 2
	note F#, 9
	note F_, 3
	rest 10
.mainLoopCh1:
	octave 2
	duty_cycle 2
	volume_envelope 10, 1
	sound_call .sub1
	sound_call .sub1
	note_type 12, 10, 1
	sound_call .sub1
	note_type 12, 10, 1
	sound_call .sub1
	note_type 12, 10, 1
	octave 4
	sound_call .sub2
	sound_call .sub2
	note_type 12, 10, 1
	sound_call .sub2
	note_type 12, 10, 1
	sound_call .sub2
	note_type 12, 10, 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	sound_call .sub3
	sound_call .sub3
	note_type 12, 10, 8
	rest 9
	sound_call .sub3
	note_type 12, 10, 8
	rest 16
	rest 16
	rest 7
	duty_cycle 1
	octave 3
	volume_envelope 7, 8
	note F_, 9
	note F#, 3
	rest 3
	note F#, 9
	note F_, 3
	rest 3
	note F_, 9
	note F#, 3
	octave 6
	volume_envelope 4, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	octave 3
	note F#, 2
	note F_, 14
	octave 6
	vibrato 1, 2, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	note D#, 1
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	octave 5
	note D_, 3
	note F_, 3
	note A_, 3
	note D_, 3
	note F_, 3
	note A_, 3
	note D_, 3
	note F_, 3
	volume_envelope 4, 8
	note A_, 8
	octave 3
	sound_jump .mainLoopCh1

.sub1:
	vibrato 1, 2, 1
	note D_, 3
	note F_, 3
	note A_, 3
	sound_ret

.sub2:
	note E_, 3
	note G_, 3
	note A#, 3
	sound_ret

.sub3:
	note D_, 3
	note F_, 3
	note A_, 3
	sound_ret

Music_cave_Ch2:
	duty_cycle 1
	vibrato 2, 1, 1
	note_type 12, 7, 8
	octave 3
	note A_, 9
	note A#, 3
	rest 3
	octave 2
	note E_, 3
	note G_, 3
	note A#, 3
	octave 3
	note C_, 3
	rest 3
	note A#, 9
	note A_, 3
	note F_, 3
	note D_, 3
	octave 2
	note A_, 4
	octave 3
.mainLoopCh2:
	rest 16
	rest 2
	note_type 12, 7, 8
	rest 16
	rest 16
	rest 16
	rest 6
	octave 2
	sound_call .sub2
	octave 2
	sound_call .sub2
	note_type 12, 7, 8
	octave 2
	sound_call .sub3
	octave 2
	note_type 12, 7, 8
	sound_call .sub6
	octave 3
	note C_, 3
	octave 2
	note A#, 3
	note G_, 3
	sound_call .sub5
	sound_call .sub5
	octave 2
	note_type 12, 7, 8
	sound_call .sub5
	octave 2
	note_type 12, 7, 8
	sound_call .sub5
	octave 2
	note_type 12, 7, 8
	sound_call .sub6
	octave 2
	note_type 12, 7, 8
	sound_call .sub6
	octave 2
	note_type 12, 7, 8
	sound_call .sub6
	octave 2
	note_type 12, 7, 8
	sound_call .sub6
	note_type 12, 7, 8
	rest 3
	octave 3
	note A_, 9
	note A#, 3
	rest 3
	note A#, 9
	note A_, 3
	rest 3
	note A_, 9
	note A#, 15
	rest 3
	note A#, 2
	note A_, 14
	rest 16
	rest 16
	rest 12
	sound_jump .mainLoopCh2

.sub2:
	transpose 0, 0
	note F_, 3
	note A_, 3
	octave 3
	note C_, 3
	octave 2
	note F_, 3
	note A_, 3
	octave 3
	note C_, 3
	sound_ret

.sub3:
	note E_, 3
	note G_, 3
	note A#, 3
	note E_, 3
	note G_, 3
	note A#, 3
	sound_ret

.sub5:
	note D_, 3
	note F_, 3
	note A_, 3
	sound_ret

.sub6:
	note E_, 3
	note G_, 3
	note A#, 3
	sound_ret

Music_cave_Ch3:
	note_type 12, 1, 0
	octave 3
	note D_, 9
	note D#, 3
	rest 12
	octave 5
	note F_, 1
	note E_, 1
	note D#, 1
	note E_, 1
	rest 2
	octave 3
	note D#, 9
	note D_, 3
	octave 5
	rest 10
.mainLoopCh3:
	octave 5
	note_type 12, 1, 0
	note D_, 9
	note A_, 9
	note G_, 9
	note F_, 9
	note E_, 9
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 6
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 6
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 6
	note F_, 9
	note A_, 9
	note G_, 9
	note F_, 6
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 9
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 6
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 6
	note C_, 3
	octave 4
	note A#, 3
	octave 5
	note C_, 3
	note D_, 9
	note A_, 9
	note G_, 9
	note A#, 3
	note A_, 3
	note G_, 3
	note A#, 9
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	note A#, 6
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	note A#, 6
	octave 6
	note C_, 3
	octave 5
	note A#, 3
	note G_, 3
	rest 3
	octave 3
	note D_, 9
	note D#, 3
	rest 3
	note D_, 9
	note C#, 3
	rest 3
	note D_, 9
	note D#, 15
	rest 3
	note D#, 2
	note D_, 14
	octave 2
	note E_, 12
	note D_, 9
	note F_, 3
	note A_, 3
	note D_, 3
	note F_, 6
	octave 5
	note A_, 8
	octave 3
	sound_jump .mainLoopCh3

Music_cave_Ch4:
	toggle_noise 0
	toggle_noise
	toggle_noise 1
	drum_speed 12
	octave 4
	drum_note 8, 1
	drum_note 1, 1
	rest 6
	drum_speed 6
	rest 1
	drum_note 2, 1
	drum_note 1, 6
	drum_speed 12
	rest 3
	drum_speed 6
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_speed 12
	rest 6
	drum_speed 1
	rest 12
	drum_speed 12
	rest 16
	rest 7
	drum_speed 6
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	rest 1
	octave 6
	drum_note 1, 1
	drum_speed 12
.mainLoopCh4:
	drum_speed 6
	drum_note 1, 6
	drum_speed 12
	rest 4
	drum_speed 6
	rest 10
	drum_speed 12
	rest 4
	drum_speed 6
	rest 1
	drum_note 1, 3
	octave 6
	drum_note 1, 6
	drum_speed 12
	rest 4
	drum_speed 6
	rest 1
	drum_note 1, 3
	drum_note 1, 6
	drum_speed 12
	rest 4
	drum_speed 6
	rest 1
	drum_note 1, 3
	octave 5
	drum_note 12, 6
	drum_speed 12
	rest 4
	drum_speed 6
	rest 1
	drum_note 12, 3
	drum_note 12, 6
	drum_speed 12
	rest 2
	drum_speed 1
	rest 12
	drum_speed 12
	rest 1
	drum_speed 6
	rest 1
	drum_note 12, 3
	drum_note 12, 6
	drum_speed 12
	rest 4
	drum_speed 6
	rest 1
	drum_note 12, 3
	drum_note 12, 6
	drum_speed 12
	rest 4
	drum_speed 6
	octave 6
	rest 1
	drum_note 1, 3
	drum_note 3, 6
	drum_speed 12
	rest 3
	drum_speed 1
	rest 12
	drum_speed 6
	rest 1
	drum_note 3, 3
	drum_note 3, 6
	drum_speed 12
	rest 4
	drum_speed 6
	rest 1
	drum_note 2, 3
	drum_note 1, 6
	drum_speed 12
	rest 4
	drum_speed 6
	rest 1
	drum_note 1, 3
	drum_note 1, 6
	drum_speed 12
	rest 3
	drum_speed 6
	octave 5
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	octave 6
	drum_note 1, 6
	drum_speed 12
	rest 2
	drum_speed 1
	rest 12
	drum_speed 12
	rest 3
	octave 5
	drum_speed 6
	drum_note 8, 2
	drum_speed 12
	rest 2
	drum_speed 6
	octave 6
	drum_note 1, 6
	drum_speed 12
	rest 10
	drum_speed 1
	rest 12
	drum_speed 12
	rest 1
	octave 5
	drum_speed 6
	drum_note 6, 6
	drum_note 5, 6
	drum_note 6, 6
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 11
	drum_speed 6
	octave 4
	drum_note 1, 6
	drum_speed 12
	rest 5
	drum_speed 6
	rest 1
	drum_note 1, 1
	drum_note 5, 6
	drum_speed 12
	rest 3
	drum_speed 6
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_speed 12
	rest 2
	drum_speed 6
	rest 1
	octave 3
	drum_note 12, 1
	octave 4
	drum_note 1, 12
	octave 3
	drum_note 12, 1
	drum_speed 1
	rest 6
	drum_speed 12
	octave 4
	rest 2
	drum_speed 6
	drum_note 1, 6
	drum_speed 12
	rest 5
	drum_speed 6
	rest 1
	drum_note 1, 1
	drum_note 2, 6
	octave 6
	drum_note 8, 2
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 8, 2
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 8, 2
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 8, 2
	drum_speed 12
	rest 2
	drum_speed 6
	drum_note 1, 2
	drum_speed 12
	rest 1
	drum_speed 6
	drum_note 1, 2
	drum_speed 12
	rest 1
	drum_speed 6
	rest 1
	octave 4
	drum_note 1, 1
	drum_note 1, 6
	octave 6
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	rest 6
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_speed 12
	rest 1
	drum_speed 1
	rest 12
	drum_speed 12
	rest 12
	octave 5
	drum_speed 6
	drum_note 1, 2
	drum_speed 12
	rest 5
	drum_speed 6
	drum_note 8, 2
	rest 4
	drum_note 1, 2
	drum_speed 12
	rest 5
	drum_speed 6
	drum_note 8, 2
	drum_speed 12
	octave 8
	rest 16
	sound_jump .mainLoopCh4
