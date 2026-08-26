Music_BattleGrunt:
	channel_count 4
	channel 1, Music_BattleGrunt_Ch1
	channel 2, Music_BattleGrunt_Ch2
	channel 3, Music_BattleGrunt_Ch3
	channel 4, Music_BattleGrunt_Ch4

Music_BattleGrunt_Ch1:
	volume 7, 7
	note_type 12, 0, 8
	octave 4
	tempo 190
	rest 8
.mainLoop:
	tempo 190
	rest 16
	rest 16
	rest 16
	rest 16
	rest 2
	octave 4
	volume_envelope 12, 5
	note D#, 2
	note C_, 4
	octave 3
	note A#, 2
	octave 4
	volume_envelope 12, 3
	note C_, 1
	note C_, 1
	rest 4
	octave 3
	note A#, 2
	octave 4
	note C_, 1
	note C_, 1
	rest 2
	octave 3
	note A#, 2
	note A#, 2
	octave 4
	note C_, 1
	note C_, 1
	rest 6
	volume_envelope 12, 5
	note F_, 2
	note D#, 4
	note C_, 2
	volume_envelope 12, 3
	note D#, 1
	note D#, 1
	rest 4
	note C_, 2
	note D#, 1
	note D#, 1
	rest 2
	note C_, 2
	note C_, 2
	note D#, 1
	volume_envelope 12, 5
	note F_, 5
	transpose 1, 0
	volume_envelope 13, 8
	duty_cycle 0
	vibrato 1, 2, 3
	sound_call .sub1
	rest 4
	octave 4
	volume_envelope 9, 8
	transpose 2, 0
	note C_, 2
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note D#, 4
	note C_, 2
	note D#, 2
	note C_, 2
	octave 3
	note A#, 2
	note F#, 2
	note_type 12, 9, 8
	vibrato 1, 2, 3
	duty_cycle 0
	octave 4
	note C_, 6
	note_type 12, 13, 8
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 4
	note_type 12, 0, 8
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 9, 8
	transpose 2, 0
	note C_, 2
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note D#, 4
	note C_, 2
	note D#, 2
	note C_, 2
	octave 3
	note A#, 2
	note F#, 2
	note G_, 6
	sound_ret

Music_BattleGrunt_Ch2:
	note_type 12, 15, 8
	rest 8
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 14
	octave 4
	transpose 0, 0
	vibrato 8, 4, 8
	duty_cycle 0
	volume_envelope 12, 8
	note A#, 1
	note A#, 1
	octave 5
	volume_envelope 13, 7
	note C_, 1
	octave 4
	note A#, 1
	note G_, 1
	note F_, 1
	note A#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note G_, 2
	octave 5
	note_type 6, 13, 7
	note C_, 1
	octave 4
	note A#, 1
	note G_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note A#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	note D#, 1
	note C_, 1
	note D#, 1
	note F_, 1
	note D#, 1
	note F#, 1
	note G_, 1
	note A#, 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note D#, 1
	note C_, 1
	note D#, 1
	note C_, 1
	note D#, 1
	note F_, 8
	note G_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note D#, 1
	note C_, 1
	octave 4
	note A#, 1
	note G_, 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 1
	octave 5
	note C_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 8
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note G_, 1
	note A#, 1
	octave 6
	note C_, 1
	note D#, 1
	note C_, 1
	octave 5
	note A#, 1
	note F_, 1
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note G_, 1
	note D#, 1
	note F_, 1
	note F#, 1
	note G_, 8
	note A#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note D#, 1
	note C_, 1
	octave 4
	note A#, 1
	note G_, 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note G_, 1
	note F_, 1
	note A#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note D#, 1
	note C_, 1
	octave 3
	note A#, 1
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	octave 2
	note A#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note D#, 1
	note C_, 8
	note_type 12, 13, 7
	rest 7
	note_type 1, 13, 7
	rest 16
	rest 16
	rest 4
	note_type 12, 13, 7
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
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 10
	note_type 12, 15, 8
	rest 8
	sound_loop 0, .mainLoop

Music_BattleGrunt_Ch3:
	octave 2
	note_type 12, 1, 4
	rest 2
	note A_, 2
	note A#, 2
	note B_, 2
.mainLoop:
	octave 3
	note_type 10, 1, 4
	sound_call .sub1
	octave 3
	note_type 10, 1, 4
	sound_call .sub1
	octave 3
	note_type 10, 1, 4
	sound_call .sub2
	octave 3
	note_type 10, 1, 4
	sound_call .sub2
	octave 3
	note_type 10, 1, 4
	sound_call .sub2
	note_type 12, 1, 4
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
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	note C_, 1
	note_type 1, 1, 4
	rest 2
	note_type 12, 1, 4
	note C_, 1
	rest 5
	octave 2
	note A#, 1
	octave 3
	note_type 10, 1, 4
	note C_, 1
	note_type 1, 1, 4
	rest 2
	note_type 12, 1, 4
	note C_, 1
	rest 5
	octave 2
	note A#, 1
	octave 3
	note_type 10, 1, 4
	note C_, 1
	note_type 1, 1, 4
	rest 2
	note_type 12, 1, 4
	note C_, 1
	octave 2
	note A#, 1
	octave 3
	note D#, 1
	note F_, 1
	rest 1
	note D#, 1
	rest 1
	note C_, 1
	octave 2
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 2
	note B_, 1
	sound_ret

.sub2:
	note C_, 1
	note_type 1, 1, 4
	rest 2
	note_type 12, 1, 4
	note C_, 1
	rest 5
	octave 2
	note A#, 1
	octave 3
	note_type 10, 1, 4
	note C_, 1
	note_type 1, 1, 4
	rest 2
	note_type 12, 1, 4
	note C_, 1
	rest 5
	octave 2
	note A#, 1
	octave 3
	note_type 10, 1, 4
	note C_, 1
	note_type 1, 1, 4
	rest 2
	note_type 12, 1, 4
	note C_, 1
	octave 2
	note A#, 1
	octave 3
	note D#, 1
	note F_, 1
	rest 1
	note D#, 1
	rest 1
	note C_, 1
	octave 2
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 2
	note B_, 1
	sound_ret

Music_BattleGrunt_Ch4:
	toggle_noise 0
	drum_speed 12
	toggle_noise
	toggle_noise 7
	rest 8
.mainLoop:
	octave 4
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	octave 4
	sound_call .sub1
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	octave 4
	drum_note 8, 4
	octave 5
	drum_note 1, 2
	octave 4
	drum_note 12, 1
	drum_note 12, 1
	drum_note 8, 4
	drum_note 10, 2
	drum_note 12, 1
	drum_note 12, 1
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	drum_note 8, 2
	drum_note 12, 1
	drum_note 10, 1
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 1
	drum_note 12, 1
	drum_note 10, 2
	drum_note 12, 2
	drum_speed 6
	drum_note 10, 1
	drum_note 10, 1
	drum_speed 12
	drum_note 11, 1
	drum_note 12, 2
	drum_speed 6
	drum_note 10, 1
	drum_note 10, 1
	drum_speed 12
	drum_note 11, 1
	drum_note 12, 2
	drum_note 12, 1
	drum_note 10, 1
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 2
	sound_ret
