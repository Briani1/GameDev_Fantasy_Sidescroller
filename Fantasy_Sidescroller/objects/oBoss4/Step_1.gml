if(hp<=0)
{
	with(meinewaffe)
	{
		instance_destroy();
	}
	instance_destroy();
	audio_play_sound(tot,0.5,false);
}