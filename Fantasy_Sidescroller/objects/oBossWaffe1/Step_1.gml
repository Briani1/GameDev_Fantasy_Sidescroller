/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
/// @besitzer
x = owner.x;
y = owner.y;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(oLevelCharacter))
{
	if(oLevelCharacter.x <x)
	{
		image_yscale= -image_yscale;
	}
	if(point_distance(oLevelCharacter.x,oLevelCharacter.y,x,y)<6000)
	{
		image_angle =point_direction(x,y,oLevelCharacter.x,oLevelCharacter.y);
		countdown--;
		if(countdown<=0)
		{
			countdown = countdownrate;
			//schusscodde
		
			with(instance_create_layer(x,y,"Waffe",oEndBossGeschoss))
			{
				speed=10;
				direction =other.image_angle + random_range(-1,1);
				image_angle = direction;
			}
		}
	}

}