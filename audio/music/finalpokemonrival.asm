Music_FinalPokemonRival:
	channel_count 4
	channel 1, Music_FinalPokemonRival_Ch1
	channel 2, Music_FinalPokemonRival_Ch2
	channel 3, Music_FinalPokemonRival_Ch3
	channel 4, Music_FinalPokemonRival_Ch4

Music_FinalPokemonRival_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 1
	tempo 220
	note G_, 2
	octave 2
	duty_cycle 2
	note D_, 4
	octave 3
	note E_, 4
	note F#, 6
	volume_envelope 10, 8
	sound_call .sub1
	note_type 12, 10, 8
	sound_call .sub1
	note_type 12, 15, 8
	sound_call .sub1
	note_type 12, 15, 8
	sound_call .sub1
	note_type 12, 15, 8
	octave 3
	note G_, 3
	note D_, 6
	note G_, 2
	note D_, 2
	note G_, 2
	sound_call .sub2
	sound_call .sub2
	note_type 12, 15, 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 9
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 12, 8
	note G_, 1
	note_type 6, 15, 8
	rest 2
	note G_, 2
	rest 2
	note D_, 2
	rest 1
	note D_, 2
	rest 1
	note D_, 2
	note F_, 2
	rest 2
	note F_, 2
	rest 2
	note F#, 2
	rest 1
	note F#, 2
	rest 1
	note F#, 2
	sound_ret

.sub2:
	note F_, 6
	rest 6
	sound_ret

Music_FinalPokemonRival_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 1
	note G_, 4
	octave 2
	note A_, 4
	octave 3
	note B_, 6
	rest 2
	octave 2
	volume_envelope 10, 8
	sound_call .sub1
	octave 2
	sound_call .sub1
	note_type 12, 12, 8
	octave 2
	note A#, 4
	octave 3
	note D_, 4
	note F_, 4
	note A#, 4
	octave 1
	note G_, 2
	note A#, 2
	octave 2
	note D_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note D_, 2
	note A_, 2
	note D_, 3
	octave 2
	note A#, 5
	note A#, 1
	rest 2
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 3
	sound_call .sub2
	sound_call .sub2
	note_type 12, 12, 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 9
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 12, 8
	note G_, 4
	note A#, 4
	octave 3
	note C_, 8
	sound_ret

.sub2:
	note D_, 12
	sound_ret

Music_FinalPokemonRival_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 2
	note G_, 16
	sound_call .sub1
	octave 2
	sound_call .sub1
	note_type 12, 1, 8
	octave 2
	sound_call .sub2
	octave 2
	sound_call .sub2
	note_type 12, 1, 8
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note G_, 1
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note G#, 1
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note A_, 1
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note A_, 1
	octave 2
	sound_call .sub3
	rest 2
	note G_, 1
	rest 2
	note G_, 1
	rest 1
	note G_, 1
	rest 2
	sound_call .sub3
	note_type 12, 1, 8
	rest 2
	sound_call .sub3
	note_type 12, 1, 8
	rest 2
	sound_call .sub3
	note_type 12, 1, 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	octave 8
	rest 10
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 1, 8
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note D#, 1
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note D#, 1
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note D#, 1
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note D#, 1
	sound_ret

.sub2:
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note F_, 1
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note F_, 1
	sound_ret

.sub3:
	note G_, 1
	rest 2
	note G_, 1
	rest 1
	note G_, 1
	sound_ret

Music_FinalPokemonRival_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	octave 6
	toggle_noise
	toggle_noise 0
	drum_note 8, 4
	drum_speed 6
	toggle_noise
	toggle_noise 1
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 3
	drum_note 3, 3
	drum_note 3, 2
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	sound_call .sub1
	drum_speed 12
	octave 6
	sound_call .sub1
	drum_speed 12
	octave 6
	sound_call .sub1
	toggle_noise
	toggle_noise 2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub2
	octave 5
	drum_speed 6
	sound_call .sub3
	drum_speed 6
	sound_call .sub3
	drum_speed 12
	rest 16
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	drum_note 3, 2
	drum_speed 1
	rest 6
	drum_speed 6
	drum_note 3, 1
	drum_speed 12
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 1
	rest 12
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

.sub2:
	drum_note 10, 4
	drum_speed 12
	drum_note 12, 1
	drum_note 12, 1
	drum_note 10, 2
	drum_note 12, 1
	drum_note 12, 1
	drum_note 10, 2
	drum_note 12, 1
	drum_note 12, 1
	octave 6
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	sound_ret

.sub3:
	drum_note 10, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_speed 12
	drum_note 10, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 10, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 10, 2
	drum_note 11, 1
	drum_note 11, 1
	octave 6
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	octave 5
	drum_speed 12
	drum_note 10, 2
	sound_ret
