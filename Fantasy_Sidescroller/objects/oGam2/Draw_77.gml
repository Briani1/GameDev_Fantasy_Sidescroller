/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(place_meeting(x, y, oPlayerLev1)){
      
	oPlayerLev1.shield = instance_create_layer(x,y,"Fireball",oShield)
	oPlayerLev1.ShieldB = true;
	
    instance_destroy();
}