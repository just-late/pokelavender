Music_BlossomCity:
	channel_count 4
	channel 1, Music_BlossomCity_Ch1
	channel 2, Music_BlossomCity_Ch2
	channel 3, Music_BlossomCity_Ch3
	channel 4, Music_BlossomCity_Ch4

Music_BlossomCity_Ch1:
	volume 7, 7
	note_type 12, 0, 8
	tempo 180
	rest 16
	octave 8
.mainLoop:
	octave 3
	note_type 4, 7, 7
	rest 1
	stereo_panning TRUE, FALSE
	note B_, 16
	rest 1
	note_type 12, 7, 7
	rest 2
	note_type 4, 7, 7
	rest 1
	note A#, 16
	rest 2
	note_type 12, 7, 7
	rest 2
	note_type 4, 7, 7
	note A_, 16
	note_type 12, 7, 7
	rest 1
	note_type 4, 7, 7
	note A_, 16
	note G#, 16
	rest 8
	note G#, 16
	note_type 12, 7, 7
	rest 1
	note_type 4, 7, 7
	rest 1
	note G_, 12
	rest 1
	volume_envelope 7, 8
	note F#, 15
	volume_envelope 7, 7
	note F#, 16
	rest 4
	octave 4
	note G_, 4
	note F#, 12
	octave 3
	volume_envelope 5, 5
	note E_, 4
	note G_, 4
	note B_, 4
	octave 4
	note D_, 4
	note E_, 4
	note G_, 4
	octave 3
	note D_, 4
	note F#, 4
	note A_, 4
	octave 4
	note C#, 4
	note C_, 4
	octave 3
	note A#, 2
	rest 1
	note G#, 1
	note A_, 4
	octave 4
	note C_, 4
	note D_, 4
	note F#, 4
	rest 3
	note E_, 1
	volume_envelope 5, 7
	note F_, 16
	note_type 4, 7, 7
	note G#, 16
	note_type 12, 7, 7
	octave 8
	rest 6
	note_type 1, 7, 7
	rest 16
	rest 4
	note_type 12, 7, 7
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
	rest 7
	sound_jump .mainLoop

Music_BlossomCity_Ch2:
	note_type 12, 15, 8
	rest 16
.mainLoop:
	octave 3
	volume_envelope 8, 7
	vibrato 3, 2, 2
	duty_cycle 3
	stereo_panning TRUE, FALSE
	sound_call .sub1
	note_type 12, 8, 7
	rest 2
	note_type 4, 8, 7
	rest 2
	note_type 1, 8, 7
	rest 4
	note_type 12, 8, 7
	rest 3
	note_type 4, 8, 7
	rest 2
	octave 3
	note_type 12, 8, 7
	sound_call .sub1
	octave 8
	note_type 12, 8, 7
	rest 2
	note_type 1, 8, 7
	rest 8
	note_type 12, 8, 7
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
	rest 4
	sound_jump .mainLoop

.sub1:
	note G_, 6
	rest 2
	note F#, 6
	rest 2
	note F#, 6
	note_type 4, 8, 7
	rest 2
	note F#, 16
	note F_, 16
	rest 7
	note E_, 16
	note_type 12, 8, 7
	rest 1
	note_type 4, 8, 7
	rest 1
	note E_, 13
	volume_envelope 8, 8
	note D_, 16
	note_type 4, 8, 7
	note D_, 16
	sound_ret

Music_BlossomCity_Ch3:
	note_type 12, 1, 0
	rest 12
	octave 3
	note_type 4, 1, 6
	transpose 1, 0
	stereo_panning FALSE, TRUE
	note B_, 8
	rest 3
	octave 4
	note D#, 1
	note_type 12, 1, 1
	octave 8
.mainLoop:
	octave 4
	note_type 4, 1, 4
	note E_, 10
	rest 1
	note D#, 1
	note E_, 8
	rest 4
	note G_, 8
	note A_, 4
	note E_, 4
	note D#, 8
	note D_, 16
	note_type 12, 1, 1
	rest 1
	note_type 4, 1, 4
	note C_, 1
	note C#, 16
	rest 11
	octave 3
	note B_, 1
	octave 4
	note C_, 16
	note_type 12, 1, 1
	rest 2
	note_type 4, 1, 1
	rest 1
	octave 3
	volume_envelope 1, 4
	note B_, 1
	octave 4
	note C_, 7
	note C#, 1
	note D_, 3
	note C#, 1
	note C_, 8
	octave 3
	note B_, 16
	note B_, 16
	note_type 12, 1, 1
	rest 6
	note_type 4, 1, 1
	rest 2
	octave 4
	volume_envelope 1, 4
	note E_, 10
	rest 1
	note D#, 1
	note E_, 8
	rest 4
	note G_, 8
	note A_, 4
	note E_, 4
	note D#, 8
	note D_, 16
	note_type 12, 1, 1
	rest 1
	note_type 4, 1, 4
	note C_, 1
	note C#, 16
	rest 11
	octave 3
	note B_, 1
	octave 4
	note C_, 16
	note_type 12, 1, 1
	rest 2
	note_type 4, 1, 1
	rest 1
	octave 3
	volume_envelope 1, 4
	note B_, 1
	octave 4
	note C_, 7
	note C#, 1
	note D_, 3
	note C#, 1
	note C_, 8
	note E_, 16
	note E_, 16
	note_type 12, 1, 1
	rest 1
	note_type 4, 1, 1
	rest 1
	volume_envelope 1, 4
	note F#, 16
	note G_, 16
	note G_, 16
	note A_, 4
	note G_, 8
	note F#, 12
	note E_, 4
	note_type 12, 1, 4
	rest 2
	note_type 4, 1, 4
	rest 2
	note D_, 16
	note_type 12, 1, 4
	rest 2
	note_type 4, 1, 4
	rest 1
	note D#, 1
	note E_, 16
	note F_, 16
	note_type 12, 1, 4
	rest 1
	note_type 4, 1, 4
	rest 1
	note G_, 4
	note F_, 8
	note E_, 15
	rest 1
	note_type 12, 1, 4
	octave 8
	rest 1
	note_type 1, 1, 4
	rest 16
	rest 8
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
	rest 16
	rest 9
	sound_jump .mainLoop

Music_BlossomCity_Ch4:
	toggle_noise 0
	drum_speed 12
	octave 5
	stereo_panning FALSE, TRUE
	drum_note 8, 4
	octave 6
	drum_speed 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_speed 12
	rest 2
	octave 5
	drum_speed 4
	rest 2
	drum_note 8, 4
	octave 6
	drum_note 1, 4
	drum_speed 1
	rest 16
	drum_speed 4
	drum_note 1, 4
	octave 8
	drum_speed 12
.mainLoop:
	octave 5
	drum_speed 4
	drum_note 8, 8
	drum_note 11, 4
	drum_note 12, 4
	drum_note 12, 4
	drum_note 12, 4
	drum_note 8, 8
	drum_note 11, 4
	drum_note 12, 4
	drum_note 11, 4
	drum_note 12, 4
	drum_note 8, 8
	rest 4
	drum_note 11, 8
	drum_note 11, 4
	drum_note 8, 7
	drum_speed 12
	rest 1
	drum_speed 4
	rest 1
	drum_speed 1
	rest 4
	drum_speed 4
	drum_note 12, 4
	drum_note 12, 4
	drum_note 12, 4
	drum_note 11, 8
	drum_note 8, 4
	drum_note 8, 7
	drum_speed 12
	rest 1
	drum_speed 4
	rest 2
	drum_note 8, 8
	drum_speed 12
	rest 1
	drum_speed 4
	rest 1
	drum_note 12, 8
	drum_note 12, 4
	drum_note 9, 11
	drum_speed 1
	rest 4
	drum_speed 4
	drum_note 11, 8
	drum_note 11, 4
	rest 4
	drum_note 11, 4
	rest 4
	drum_speed 12
	rest 2
	octave 6
	drum_speed 4
	rest 2
	drum_note 1, 4
	octave 5
	drum_note 9, 12
	drum_note 11, 8
	drum_note 11, 4
	drum_note 8, 12
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_speed 12
	octave 8
	rest 1
	drum_speed 1
	rest 16
	rest 16
	rest 4
	drum_speed 12
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
	rest 12
	sound_jump .mainLoop
