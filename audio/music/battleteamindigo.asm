Music_BattleTeamIndigo:
	channel_count 3
	channel 1, Music_BattleTeamIndigo_Ch1
	channel 2, Music_BattleTeamIndigo_Ch2
	channel 3, Music_BattleTeamIndigo_Ch3

Music_BattleTeamIndigo_Ch1:
	volume 7, 7
	note_type 12, 10, 8
	vibrato 1, 1, 1
	duty_cycle 1
	tempo 115
	stereo_panning FALSE, TRUE
	octave 5
	sound_call .sub1
	sound_call .sub1
	note_type 12, 10, 8
	sound_call .sub1
	note_type 12, 10, 8
	sound_call .sub1
	note_type 12, 10, 8
	octave 4
.mainLoop:
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
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	duty_cycle 0
	volume_envelope 6, 1
	note C_, 2
	note D#, 2
	rest 2
	note D#, 2
	sound_ret

Music_BattleTeamIndigo_Ch2:
	note_type 12, 10, 8
	octave 4
	stereo_panning TRUE, FALSE
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
.mainLoop:
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
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

Music_BattleTeamIndigo_Ch3:
	note_type 12, 1, 0
	octave 2
	sound_call .sub1
	sound_call .sub1
	note_type 12, 1, 0
	sound_call .sub1
	note_type 12, 1, 0
	sound_call .sub1
	note_type 12, 1, 8
	octave 8
.mainLoop:
	volume_envelope 1, 13
	rest 16
	rest 16
	rest 16
	rest 2
	note_type 12, 1, 8
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
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
	octave 3
	volume_envelope 1, 8
	note C_, 2
	octave 2
	note D#, 2
	note F#, 2
	note D#, 2
	sound_ret
