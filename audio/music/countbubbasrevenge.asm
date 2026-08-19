Music_CountBubbasRevenge:
	channel_count 4
	channel 1, Music_BattleTheCount_Ch1
	channel 2, Music_BattleTheCount_Ch2
	channel 3, Music_BattleTheCount_Ch3
	channel 4, Music_BattleTheCount_Ch4

Music_BattleTheCount_Ch1:
	volume 7, 7
	note_type 6, 10, 3
	tempo 108
	rest 5
	octave 2
	volume_envelope 12, 3
	note A#, 3
	note A#, 5
	note A#, 3
.mainLoop:
	octave 2
	note_type 6, 10, 3
	sound_call .sub1
	octave 3
	note A_, 5
	note A#, 11
	note A#, 8
	note G_, 5
	note F_, 3
	octave 4
	note D_, 5
	note E_, 3
	note F_, 5
	note F_, 3
	note F_, 5
	octave 3
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	octave 4
	note_type 12, 10, 5
	rest 2
	note_type 1, 10, 5
	rest 16
	rest 7
	note_type 6, 10, 5
	rest 1
	note_type 1, 10, 5
	rest 7
	note_type 12, 10, 5
	rest 1
	note_type 6, 10, 5
	rest 12
	volume_envelope 15, 5
	transpose 1, 5
	sound_call .sub2
	note_type 12, 10, 5
	rest 10
	note_type 6, 10, 5
	rest 1
	octave 2
	transpose 0, 0
	volume_envelope 13, 3
	note G_, 3
	note G#, 5
	note A_, 3
	sound_call .sub3
	note_type 6, 10, 5
	rest 16
	rest 8
	note_type 12, 10, 5
	rest 16
	rest 4
	note_type 6, 13, 7
	rest 5
	transpose 0, 5
	sound_call .sub4
	note_type 12, 10, 5
	rest 6
	note_type 6, 10, 5
	rest 1
	volume_envelope 13, 3
	note B_, 11
	note B_, 8
	note_type 12, 10, 5
	rest 6
	octave 4
	note_type 6, 10, 5
	rest 1
	volume_envelope 13, 3
	note F#, 11
	note F_, 8
	note_type 12, 10, 5
	rest 6
	note_type 6, 10, 5
	rest 1
	volume_envelope 13, 3
	note D#, 11
	note D#, 8
	note C#, 8
	note C#, 5
	note C_, 3
	note_type 12, 10, 5
	rest 2
	octave 3
	note_type 6, 10, 5
	rest 1
	transpose 0, 0
	volume_envelope 13, 3
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note B_, 5
	octave 4
	note C_, 16
	note C_, 3
	octave 3
	note A_, 5
	note G#, 3
	note_type 12, 10, 5
	rest 10
	note_type 1, 10, 5
	rest 16
	rest 8
	note_type 12, 10, 5
	rest 2
	octave 4
	note_type 6, 10, 5
	rest 1
	transpose 0, 5
	volume_envelope 13, 3
	note C_, 11
	octave 3
	note B_, 5
	note G#, 3
	note A_, 5
	note F_, 11
	octave 4
	note D_, 8
	octave 3
	note A#, 5
	note A#, 3
	note G#, 5
	note F_, 3
	rest 5
	note D_, 10
	note D#, 1
	note E_, 1
	note F_, 4
	note A#, 16
	note A#, 3
	octave 4
	note C_, 8
	octave 3
	note G#, 5
	note G#, 3
	note F#, 5
	note D#, 3
	note_type 12, 10, 5
	rest 2
	note_type 6, 10, 5
	rest 1
	volume_envelope 13, 3
	note C_, 3
	note_type 12, 10, 5
	rest 10
	octave 2
	note_type 6, 10, 5
	rest 1
	transpose 0, 0
	volume_envelope 13, 3
	note A#, 3
	note A#, 5
	note A#, 3
	sound_call .sub3
	note_type 12, 10, 5
	rest 4
	note_type 6, 10, 5
	rest 5
	octave 4
	transpose 0, 5
	volume_envelope 13, 3
	note D#, 11
	note D_, 8
	note C#, 13
	note C_, 11
	note D_, 5
	note F_, 3
	note_type 6, 10, 5
	vibrato 0, 0, 0
	duty_cycle 0
	rest 5
	octave 3
	note_type 6, 13, 7
	sound_call .sub4
	note_type 12, 10, 5
	rest 2
	note_type 6, 10, 5
	rest 9
	transpose 0, 0
	octave 2
	volume_envelope 12, 3
	note A#, 3
	note A#, 5
	note A#, 3
	octave 3
	note_type 12, 10, 5
	sound_jump .mainLoop

.sub1:
	transpose 0, 0
	volume_envelope 15, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	sound_ret

.sub2:
	note D_, 8
	octave 3
	note A#, 5
	note A#, 3
	note G#, 5
	note F_, 3
	rest 5
	note D_, 10
	note D#, 1
	note E_, 1
	note F_, 4
	note A#, 16
	note A#, 3
	octave 4
	note C_, 8
	octave 3
	note G#, 5
	note G#, 3
	note F#, 5
	note D#, 3
	note_type 12, 10, 5
	rest 2
	note_type 6, 10, 5
	rest 1
	volume_envelope 15, 5
	note C_, 3
	sound_ret

.sub3:
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	octave 3
	note A_, 5
	note A#, 11
	note A#, 8
	note G_, 5
	note F_, 3
	sound_ret

.sub4:
	volume_envelope 13, 3
	note B_, 3
	note_type 12, 10, 5
	rest 2
	note_type 6, 10, 5
	rest 1
	volume_envelope 13, 3
	note E_, 3
	note_type 12, 10, 5
	rest 2
	note_type 6, 10, 5
	rest 1
	volume_envelope 13, 3
	note F_, 3
	note_type 12, 10, 5
	rest 2
	note_type 6, 10, 5
	rest 1
	volume_envelope 13, 3
	note A_, 3
	octave 4
	note C_, 8
	note D_, 8
	note C_, 8
	octave 3
	note G#, 8
	rest 5
	note F_, 3
	sound_ret

Music_BattleTheCount_Ch2:
	note_type 6, 15, 8
	octave 1
	rest 5
	volume_envelope 8, 3
	note A#, 3
	duty_cycle 0
	note A#, 5
	note A#, 3
.mainLoop:
	octave 1
	note_type 6, 8, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	octave 2
	note A_, 5
	note A#, 3
	rest 16
	octave 4
	rest 8
	note G_, 13
	note_type 12, 15, 8
	rest 1
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note G_, 13
	note F#, 8
	note G_, 3
	note F_, 3
	note D_, 2
	octave 3
	note A#, 11
	note_type 12, 15, 8
	rest 2
	note_type 1, 15, 8
	rest 6
	octave 2
	note_type 6, 8, 7
	note A#, 3
	note A#, 5
	note A#, 3
	octave 3
	note A#, 5
	octave 2
	note A#, 3
	note A#, 5
	note A#, 3
	octave 3
	note A#, 5
	octave 2
	note A#, 3
	note A#, 5
	note A#, 3
	octave 4
	note C#, 5
	note C_, 1
	octave 3
	note A#, 1
	rest 1
	note F_, 16
	note_type 12, 15, 8
	rest 16
	rest 10
	octave 1
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note G_, 3
	note G#, 5
	note A_, 3
	sound_call .sub1
	note D_, 8
	note F_, 5
	note D_, 3
	note C_, 1
	octave 3
	note A#, 1
	note G#, 1
	note F#, 1
	note G#, 1
	note A#, 3
	note G#, 5
	note A#, 3
	note A#, 5
	note G#, 8
	note A#, 3
	note A#, 5
	octave 4
	note C_, 3
	octave 3
	note A#, 5
	note_type 12, 15, 8
	rest 1
	octave 2
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note G_, 5
	transpose 0, 5
	sound_call .sub2
	note_type 12, 15, 8
	rest 6
	octave 3
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note F#, 11
	note F#, 8
	note_type 12, 15, 8
	rest 6
	octave 4
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note D_, 11
	note C#, 8
	note_type 12, 15, 8
	rest 6
	octave 3
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note B_, 11
	note B_, 8
	note_type 12, 15, 8
	rest 8
	octave 2
	note_type 6, 15, 8
	rest 5
	volume_envelope 8, 7
	transpose 0, 0
	note A#, 3
	note A#, 5
	note A#, 3
	note A#, 5
	note A#, 3
	octave 3
	note A#, 5
	octave 2
	note A#, 3
	note A#, 5
	note A#, 3
	octave 3
	note A#, 5
	octave 2
	note A#, 3
	note B_, 5
	octave 3
	note E_, 16
	note E_, 3
	note F_, 5
	note F#, 3
	note_type 12, 15, 8
	rest 16
	note_type 6, 15, 8
	rest 5
	volume_envelope 8, 7
	note D#, 3
	note D#, 5
	note C_, 8
	octave 2
	note A#, 3
	note G_, 8
	octave 3
	note D_, 8
	octave 2
	note A#, 5
	note A#, 3
	note G#, 5
	note F_, 3
	note_type 12, 15, 8
	rest 2
	octave 3
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note D_, 10
	note D#, 1
	note E_, 1
	note F_, 4
	note D_, 16
	note C_, 3
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	octave 2
	rest 1
	volume_envelope 8, 7
	note A#, 3
	note A#, 5
	note A#, 3
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note A#, 3
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note A#, 3
	note_type 12, 15, 8
	rest 16
	octave 1
	note_type 6, 8, 7
	sound_call .sub1
	octave 4
	note_type 6, 10, 7
	note E_, 5
	note D#, 1
	note C#, 1
	octave 3
	note B_, 1
	rest 5
	note A#, 3
	octave 4
	note E_, 5
	note D#, 1
	note C#, 1
	octave 3
	note B_, 1
	note_type 1, 15, 8
	rest 1
	note_type 12, 15, 8
	rest 1
	note_type 1, 15, 8
	rest 16
	rest 1
	note_type 6, 10, 7
	note A#, 3
	octave 4
	note F_, 5
	note F_, 3
	rest 5
	note F_, 11
	note_type 6, 15, 8
	rest 5
	note_type 1, 15, 8
	rest 16
	rest 2
	note_type 6, 15, 8
	rest 5
	octave 2
	note_type 6, 8, 7
	sound_call .sub2
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 16
	note_type 12, 15, 8
	rest 2
	sound_jump .mainLoop

.sub1:
	note A#, 5
	note A#, 3
	octave 2
	note A#, 5
	octave 1
	note A#, 3
	note A#, 5
	note A#, 3
	octave 2
	note A#, 5
	octave 1
	note A#, 3
	octave 4
	note C#, 5
	octave 3
	note A#, 3
	rest 5
	octave 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 1, 15, 8
	rest 16
	rest 2
	note_type 6, 8, 7
	note D_, 3
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note D#, 3
	sound_ret

.sub2:
	octave 2
	note_type 6, 8, 7
	vibrato 0, 0, 0
	duty_cycle 0
	note B_, 3
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note B_, 3
	note_type 12, 15, 8
	rest 2
	octave 3
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note C_, 3
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 1
	volume_envelope 8, 7
	note F_, 3
	note G#, 8
	note A#, 8
	note G#, 8
	note D#, 8
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	octave 2
	rest 1
	volume_envelope 8, 7
	note F_, 3
	sound_ret

Music_BattleTheCount_Ch3:
	note_type 12, 1, 0
	rest 8
	octave 2
.mainLoop:
	octave 2
	sound_call .sub1
	note F_, 8
	note F#, 8
	note G_, 8
	note A#, 8
	note A_, 8
	note A#, 8
	note G#, 8
	note G_, 8
	note F_, 8
	note D#, 8
	note D_, 8
	note C#, 8
	note C_, 8
	note C#, 8
	note D_, 8
	note D#, 8
	note F_, 8
	note G_, 5
	note G_, 3
	note F#, 5
	note G_, 3
	note A#, 5
	octave 3
	note D#, 3
	note C_, 8
	octave 2
	note B_, 8
	note A_, 8
	note_type 12, 1, 0
	rest 4
	sound_call .sub2
	vibrato 0, 0, 0
	note D_, 8
	note F_, 8
	note D_, 8
	note A_, 8
	note D_, 8
	note G#, 8
	note A_, 8
	note A#, 8
	octave 3
	note E_, 8
	note D#, 8
	note D_, 8
	note C_, 8
	octave 2
	note A#, 8
	octave 3
	note C_, 8
	note C#, 8
	octave 2
	note A#, 8
	note G#, 8
	note A#, 8
	octave 3
	note C_, 8
	note E_, 8
	note G_, 8
	note F_, 8
	note E_, 8
	note D_, 8
	octave 2
	note F#, 8
	note G#, 8
	note B_, 8
	octave 3
	note C#, 8
	note E_, 8
	note D#, 8
	note D_, 8
	note C_, 8
	octave 2
	rest 8
	note A_, 8
	note G_, 8
	note F_, 8
	note D#, 8
	note F_, 8
	note G#, 8
	note A_, 8
	note A#, 8
	octave 3
	note C_, 8
	note D_, 8
	note C_, 8
	octave 2
	note A#, 8
	octave 3
	note C_, 8
	octave 2
	note A#, 8
	note A_, 8
	note G_, 8
	octave 3
	note C_, 8
	octave 2
	note A#, 8
	octave 3
	note D_, 8
	note C_, 8
	octave 2
	note A#, 8
	note G#, 8
	note A#, 8
	octave 3
	note D_, 8
	note C_, 8
	note F_, 8
	note D#, 8
	octave 2
	note A#, 8
	octave 3
	note D_, 8
	note C_, 8
	octave 2
	note B_, 8
	note_type 12, 1, 0
	rest 4
	sound_call .sub2
	octave 2
	note_type 6, 1, 0
	note E_, 8
	note F_, 8
	note G_, 8
	note A#, 8
	octave 3
	note C_, 8
	octave 2
	note A#, 8
	octave 3
	note D#, 8
	octave 2
	note B_, 8
	note B_, 8
	octave 3
	note C_, 8
	note D_, 8
	note D#, 8
	note F_, 8
	note G_, 8
	note F_, 8
	note C_, 8
	note D_, 8
	note C#, 8
	note C_, 8
	note_type 12, 1, 0
	rest 4
	sound_jump .mainLoop

.sub1:
	note A#, 4
	note G#, 4
	note G_, 4
	note F_, 4
	note_type 6, 1, 0
	note D#, 5
	note D#, 3
	note F_, 5
	note G_, 3
	note F_, 8
	note D#, 8
	sound_ret

.sub2:
	note A#, 4
	note G#, 4
	note G_, 4
	note F_, 4
	note_type 6, 1, 0
	note D#, 5
	note D#, 3
	note F_, 5
	note G_, 3
	note F_, 8
	note D#, 8
	sound_ret

Music_BattleTheCount_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 8
.mainLoop:
	octave 5
	drum_speed 6
	sound_call .sub1
	drum_note 8, 5
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 1
	drum_note 10, 2
	drum_note 10, 2
	sound_call .sub1
	drum_speed 6
	sound_call .sub1
	drum_speed 6
	sound_call .sub1
	drum_speed 6
	sound_call .sub1
	drum_speed 6
	sound_call .sub1
	drum_speed 6
	drum_note 8, 5
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 1
	drum_note 10, 2
	drum_note 10, 2
	octave 6
	drum_note 1, 8
	drum_note 1, 8
	drum_note 1, 8
	drum_speed 12
	rest 1
	drum_speed 1
	rest 12
	drum_speed 12
	rest 1
	drum_speed 6
	rest 1
	drum_speed 1
	rest 6
	octave 5
	drum_speed 6
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 5
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 1
	drum_note 10, 2
	drum_note 10, 2
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	sound_call .sub2
	octave 6
	drum_note 1, 8
	octave 5
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	octave 6
	drum_note 1, 8
	drum_note 1, 8
	drum_note 1, 8
	octave 5
	toggle_noise
	toggle_noise 0
	rest 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	sound_call .sub3
	octave 5
	drum_speed 6
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	octave 6
	drum_note 1, 8
	drum_note 1, 8
	drum_note 1, 8
	octave 5
	rest 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	sound_call .sub4
	octave 5
	drum_speed 6
	sound_call .sub4
	octave 5
	drum_speed 6
	drum_note 8, 8
	octave 6
	drum_note 1, 8
	drum_note 1, 8
	drum_note 1, 8
	rest 8
	drum_speed 12
	sound_jump .mainLoop

.sub1:
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	sound_ret

.sub2:
	toggle_noise
	toggle_noise 0
	drum_speed 6
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	sound_ret

.sub3:
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	sound_ret

.sub4:
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	drum_note 8, 8
	drum_note 10, 5
	drum_note 10, 3
	sound_ret
