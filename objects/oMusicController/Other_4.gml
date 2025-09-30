if(room==Level_1 or room==Level_2 or room==Level_3){
	global.level_music = audio_play_sound(snd_LevelTheme, 1, true);
} else {
	global.level_music=audio_play_sound(Hub6,1,true)
}