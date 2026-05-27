Music_EggLottery:
	channel_count 4
	channel 1, Music_EggLottery_Ch1
	channel 2, Music_EggLottery_Ch2
	channel 3, Music_EggLottery_Ch3
	channel 4, Music_EggLottery_Ch4

Music_EggLottery_Ch1:
	tempo 110
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	volume_envelope 7, 8
	duty_cycle 2
	vibrato 2, 1, 1
	tempo 110
	octave 6
	note C_, 1
	octave 5
	note G_, 1
	note B_, 1
	note F_, 1
	note E_, 4
	note E_, 1
	note D#, 1
	note D_, 1
	octave 4
	note B_, 1
	octave 5
	note C_, 4
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note G#, 1
	note F#, 1
	note D#, 1
	note F_, 1
	note G_, 8
	octave 8
	sound_ret

Music_EggLottery_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 4
	volume_envelope 7, 8
	duty_cycle 2
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 4
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 4
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 8
	octave 8
	sound_ret

Music_EggLottery_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 3
	volume_envelope 2, 6
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 2
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 8
	octave 8
	sound_ret

Music_EggLottery_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	octave 5
	drum_note 8, 1
	rest 1
	drum_note 8, 1
	rest 1
	drum_note 1, 4
	drum_note 8, 1
	rest 1
	drum_note 8, 1
	rest 1
	drum_note 1, 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 1, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 1, 1
	drum_note 5, 8
	octave 8
	sound_ret
