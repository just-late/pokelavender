Music_GraniteVillage:
	channel_count 4
	channel 1, Music_GraniteVillage_Ch1
	channel 2, Music_GraniteVillage_Ch2
	channel 3, Music_GraniteVillage_Ch3
	channel 4, Music_GraniteVillage_Ch4

Music_GraniteVillage_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 2
	duty_cycle 1
	transpose 1, 0
	tempo 227
	volume_envelope 8, 8
	note B_, 2
	octave 3
	note G_, 2
	note G_, 4
	note F#, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 1
	note G_, 1
	note A_, 2
	note F#, 2
	note E_, 2
	note G_, 2
	note F#, 6
	octave 2
	note B_, 2
	octave 3
	note E_, 4
	note E_, 2
	note F#, 2
	note G_, 6
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note D_, 4
	note D_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note D_, 2
	note E_, 4
	note F#, 4
	note G_, 4
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
	rest 2
	octave 8
	sound_loop 0, .mainLoop

Music_GraniteVillage_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 3
	volume_envelope 8, 5
	duty_cycle 1
	transpose 0, 0
	note D_, 4
	note B_, 4
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note F#, 1
	note E_, 1
	note F#, 2
	note D_, 2
	note E_, 2
	note A_, 1
	rest 1
	note B_, 6
	note B_, 2
	note A_, 2
	note F#, 2
	note B_, 2
	note A_, 4
	note F#, 4
	note G_, 4
	note G_, 4
	note A_, 1
	note B_, 1
	octave 4
	note C_, 2
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note E_, 2
	note G_, 1
	note F#, 1
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note F#, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 4
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
	rest 2
	octave 8
	sound_loop 0, .mainLoop

Music_GraniteVillage_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 4
	note B_, 2
	octave 5
	note E_, 5
	volume_envelope 2, 0
	note E_, 1
	volume_envelope 1, 0
	note F#, 2
	note G_, 5
	volume_envelope 2, 0
	note G_, 1
	volume_envelope 1, 0
	note E_, 1
	note D_, 1
	note E_, 6
	note D_, 2
	octave 4
	note B_, 6
	octave 5
	note D_, 2
	note E_, 5
	volume_envelope 2, 0
	note E_, 1
	volume_envelope 1, 0
	note F#, 2
	note G_, 5
	volume_envelope 2, 0
	note G_, 1
	volume_envelope 1, 0
	sound_call .sub1
	sound_call .sub1
	note_type 12, 1, 0
	note B_, 2
	octave 6
	note E_, 4
	note D_, 4
	octave 5
	note B_, 6
	note A_, 1
	note G_, 1
	note A_, 4
	note G_, 4
	note E_, 4
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
	rest 2
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 1, 0
	note A_, 2
	note B_, 5
	volume_envelope 2, 0
	note B_, 1
	sound_ret

Music_GraniteVillage_Ch4:
	toggle_noise 0
	toggle_noise
	toggle_noise 7
	drum_speed 12
.mainLoop:
	octave 5
	sound_call .sub1
	octave 5
	sound_call .sub1
	drum_speed 12
	octave 5
	drum_note 7, 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 11, 1
	drum_note 11, 1
	octave 6
	drum_note 3, 1
	octave 5
	drum_note 11, 1
	octave 6
	drum_note 3, 2
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
	sound_loop 0, .mainLoop

.sub1:
	drum_note 8, 2
	drum_note 11, 2
	toggle_noise
	toggle_noise 7
	drum_note 11, 4
	drum_note 7, 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 7, 2
	drum_note 8, 2
	drum_note 11, 1
	drum_note 11, 1
	octave 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_ret
