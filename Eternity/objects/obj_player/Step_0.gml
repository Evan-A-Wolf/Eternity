//if the player is in an area marked as a dungeon, which also means enemies can spawn, they revert to grid
//movement. Running mechanic will make movement smoother. 
if (instance_exists(obj_dungeon)){
	if (keyboard_check(ord("W")) && !place_meeting(x, y - 32, obj_wall) && pressed == false){
		y -= 32;
		sprite_index = spr_playerUp_temp;
		image_xscale = 1;
		pressed = true;
	}
	if (keyboard_check(ord("A")) && !place_meeting(x - 32, y, obj_wall) && pressed == false){
		x -= 32;
		sprite_index = spr_playerRight_temp;
		image_xscale = -1;
		pressed = true;
	}
	if (keyboard_check(ord("D")) && !place_meeting(x + 32, y, obj_wall) && pressed == false){
		x += 32;
		sprite_index = spr_playerRight_temp;
		image_xscale = 1;
		pressed = true;
	}
	if (keyboard_check(ord("S")) && !place_meeting(x, y + 32, obj_wall) && pressed == false){
		y += 32;
		sprite_index = spr_playerDown_temp;
		image_xscale = 1;
		pressed = true;
	}
	if !(keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D"))){
		pressed = false;
	}
// if the player isn't in an area marked as a dungeon, they change to omnidirectional movement which allows
//them to move around faster.
}else{
	if (keyboard_check(ord("W")) && !place_meeting(x, y - spd, obj_wall)){
		y -= spd;
		sprite_index = spr_playerUp_temp;
		image_xscale = 1;
	}
	if (keyboard_check(ord("A")) && !place_meeting(x - spd, y, obj_wall)){
		x -= spd;
		sprite_index = spr_playerRight_temp;
		image_xscale = -1;
	}
	if (keyboard_check(ord("D")) && !place_meeting(x + spd, y, obj_wall)){
		x += spd;
		sprite_index = spr_playerRight_temp;
		image_xscale = 1;
	}
	if (keyboard_check(ord("S")) && !place_meeting(x, y + spd, obj_wall)){
		y += spd;
		sprite_index = spr_playerDown_temp;
		image_xscale = 1;
	}
}