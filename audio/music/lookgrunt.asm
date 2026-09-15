Music_EncounterGrunt:
	channel_count 4
	channel 1, Music_EncounterGrunt_Ch1
	channel 2, Music_EncounterGrunt_Ch2
	channel 3, Music_EncounterGrunt_Ch3
	channel 4, Music_EncounterGrunt_Ch4

Music_EncounterGrunt_Ch1:
	volume 7, 7
	note_type 6, 0, 8
	octave 3
	tempo 148
	note A_, 1
	rest 4
	volume_envelope 13, 5
	note A_, 3
	octave 8
	note_type 12, 15, 8
.mainLoop:
	octave 4
	note_type 6, 13, 3
	note D_, 5
	volume_envelope 13, 8
	note D_, 16
	note_type 12, 15, 8
	rest 4
	octave 3
	note_type 6, 13, 5
	note A_, 3
	octave 4
	note_type 6, 11, 3
	note D_, 5
	note_type 6, 11, 8
	note D_, 16
	note_type 12, 15, 8
	rest 4
	octave 3
	note_type 6, 13, 3
	sound_call .sub2
	note_type 12, 15, 8
	rest 3
	note_type 6, 15, 8
	rest 2
	note_type 6, 13, 4
	sound_call .sub1
	note_type 12, 15, 8
	rest 3
	note_type 6, 15, 8
	rest 2
	note_type 6, 13, 4
	sound_call .sub1
	note_type 12, 15, 8
	rest 4
	note_type 6, 14, 3
	octave 3
	sound_call .sub2
	note_type 6, 15, 8
	rest 8
	volume_envelope 13, 8
	note D_, 3
	octave 4
	note A_, 5
	octave 5
	note D_, 3
	octave 4
	note A_, 2
	note B_, 2
	note A_, 1
	note D_, 3
	volume_envelope 14, 4
	note G#, 8
	rest 5
	volume_envelope 14, 5
	note D_, 3
	volume_envelope 14, 8
	note G_, 7
	rest 1
	note A_, 5
	volume_envelope 14, 3
	note F#, 3
	rest 13
	note D_, 3
	note F_, 7
	rest 1
	note F_, 7
	rest 1
	volume_envelope 14, 8
	note D_, 5
	volume_envelope 14, 3
	note E_, 3
	rest 1
	note_type 12, 15, 8
	rest 1
	note_type 1, 14, 8
	rest 6
	note_type 1, 15, 8
	rest 6
	note_type 6, 15, 8
	note D_, 3
	octave 3
	note_type 12, 15, 8
	rest 2
	note_type 6, 15, 8
	rest 1
	volume_envelope 14, 4
	note A_, 3
	octave 4
	volume_envelope 14, 8
	note B_, 5
	note A#, 3
	note A_, 5
	note F#, 3
	note D_, 5
	octave 3
	note A_, 3
	note_type 12, 15, 8
	sound_jump .mainLoop

.sub1:
	note D_, 3
	note G_, 5
	volume_envelope 13, 8
	note G_, 16
	sound_ret

.sub2:
	note A_, 3
	octave 4
	note D_, 3
	note D_, 2
	note D_, 3
	note F_, 5
	note F_, 3
	volume_envelope 13, 4
	note D_, 5
	note D_, 3
	note C_, 5
	octave 3
	note A_, 3
	octave 4
	note D_, 5
	volume_envelope 13, 8
	note D_, 16
	sound_ret

Music_EncounterGrunt_Ch2:
	note_type 12, 15, 8
	rest 4
.mainLoop:
	octave 4
	note_type 6, 8, 4
	duty_cycle 0
	transpose 1, 0
	stereo_panning TRUE, TRUE
	note C_, 5
	volume_envelope 8, 8
	note C_, 16
	note_type 12, 11, 4
	rest 5
	note_type 6, 11, 4
	rest 1
	volume_envelope 8, 3
	note C_, 5
	volume_envelope 8, 8
	note C_, 16
	note_type 12, 11, 4
	rest 5
	note_type 6, 11, 4
	rest 1
	volume_envelope 6, 3
	sound_call .sub1
	note_type 12, 11, 4
	rest 1
	note_type 1, 11, 4
	rest 16
	rest 2
	note_type 6, 11, 4
	rest 1
	note_type 1, 11, 4
	rest 6
	note_type 12, 11, 4
	rest 2
	octave 4
	note_type 6, 8, 4
	note F_, 5
	volume_envelope 8, 8
	note F_, 16
	note_type 12, 11, 4
	rest 3
	note_type 1, 11, 4
	rest 6
	note_type 12, 11, 4
	rest 2
	note_type 6, 8, 4
	note F_, 5
	volume_envelope 8, 8
	note F_, 16
	note_type 12, 11, 4
	rest 3
	note_type 1, 11, 4
	rest 6
	note_type 12, 11, 4
	rest 2
	note_type 6, 6, 3
	sound_call .sub1
	note_type 12, 11, 4
	rest 3
	note_type 1, 11, 4
	rest 6
	octave 4
	note_type 6, 11, 4
	rest 1
	volume_envelope 9, 3
	note D_, 3
	volume_envelope 9, 8
	note F_, 5
	note_type 6, 8, 4
	note G_, 3
	note F_, 5
	note D_, 3
	note F_, 8
	note_type 1, 11, 4
	rest 16
	rest 14
	note_type 6, 8, 4
	note D_, 3
	note E_, 7
	rest 1
	note F_, 5
	volume_envelope 10, 2
	note A_, 3
	note_type 12, 11, 4
	rest 6
	note_type 1, 11, 4
	rest 6
	note_type 6, 9, 4
	note F_, 3
	note E_, 7
	rest 1
	note D_, 7
	rest 1
	note D_, 5
	volume_envelope 9, 3
	note C_, 3
	note_type 12, 11, 4
	rest 2
	note_type 6, 11, 4
	rest 1
	volume_envelope 11, 2
	note A_, 3
	note_type 12, 11, 4
	rest 4
	note_type 6, 8, 7
	note G_, 5
	note F#, 3
	note D_, 5
	note_type 6, 11, 4
	note A_, 3
	note C_, 5
	rest 3
	octave 8
	note_type 12, 11, 4
	sound_jump .mainLoop

.sub1:
	note C_, 3
	note C_, 2
	note C_, 3
	note D_, 5
	note D_, 3
	note C_, 5
	note C_, 3
	octave 3
	note_type 6, 11, 4
	note A_, 5
	octave 4
	note C_, 3
	note D_, 5
	octave 3
	volume_envelope 7, 8
	note F#, 16
	sound_ret

Music_EncounterGrunt_Ch3:
	note_type 12, 1, 0
	stereo_panning TRUE, TRUE
	rest 4
	octave 8
.mainLoop:
	octave 3
	note_type 12, 1, 0
	note C_, 3
	rest 1
	note C_, 3
	note_type 6, 1, 0
	rest 2
	note_type 12, 1, 0
	octave 2
	note A_, 3
	rest 1
	note A_, 3
	rest 1
	octave 3
	note C_, 3
	rest 1
	note C_, 3
	rest 1
	octave 2
	note A_, 3
	rest 1
	sound_call .sub1
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	octave 3
	rest 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note F_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note F_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note D_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note D_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note F_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note F_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note D_, 6
	note_type 12, 1, 0
	rest 1
	octave 2
	sound_call .sub1
	note_type 12, 1, 0
	rest 1
	octave 2
	note_type 6, 1, 0
	note D_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note F_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note G_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note B_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note A_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note D_, 6
	rest 2
	note G_, 5
	note A_, 3
	rest 8
	note G_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note A_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note F_, 6
	note_type 12, 1, 0
	rest 1
	octave 3
	note_type 6, 1, 0
	note D_, 5
	note C_, 3
	octave 2
	note A_, 6
	rest 2
	note G_, 6
	note_type 12, 1, 0
	rest 1
	note_type 6, 1, 0
	note F_, 8
	note D_, 16
	note_type 12, 1, 0
	octave 8
	sound_jump .mainLoop

.sub1:
	note A_, 3
	rest 1
	octave 3
	note D_, 3
	rest 1
	note F_, 3
	rest 1
	note G_, 3
	rest 1
	note F_, 3
	rest 1
	note_type 6, 1, 0
	note C_, 5
	note D_, 3
	note C_, 6
	note_type 12, 1, 0
	rest 1
	octave 2
	note_type 6, 1, 0
	note A_, 6
	sound_ret

Music_EncounterGrunt_Ch4:
	toggle_noise 0
	drum_speed 6
	rest 8
	drum_speed 12
	octave 8
.mainLoop:
	drum_speed 6
	octave 5
	stereo_panning TRUE, TRUE
	sound_call .sub1
	octave 5
	drum_speed 6
	sound_call .sub1
	drum_speed 6
	octave 6
	drum_note 1, 8
	drum_note 1, 8
	octave 5
	drum_note 11, 8
	drum_note 8, 8
	drum_note 12, 8
	drum_note 12, 8
	rest 8
	drum_note 11, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 11, 8
	drum_note 8, 8
	drum_note 12, 8
	drum_speed 12
	rest 8
	drum_speed 6
	drum_note 8, 8
	drum_speed 12
	octave 8
	sound_jump .mainLoop

.sub1:
	drum_note 12, 5
	drum_note 12, 3
	drum_note 12, 8
	drum_note 8, 8
	drum_note 8, 5
	drum_note 8, 3
	drum_note 12, 3
	drum_note 12, 2
	drum_note 12, 3
	drum_note 12, 8
	drum_note 8, 8
	drum_note 8, 5
	drum_note 8, 3
	drum_note 11, 5
	drum_note 8, 3
	drum_note 12, 5
	drum_note 12, 3
	drum_note 8, 5
	drum_note 8, 3
	drum_note 8, 8
	drum_note 12, 5
	drum_note 12, 3
	drum_note 8, 8
	drum_note 8, 5
	drum_note 8, 3
	drum_note 11, 8
	sound_ret
