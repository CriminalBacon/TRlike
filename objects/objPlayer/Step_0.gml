// get inputs
// ********************
var _keyRight = keyboard_check(ord("D"));
var _keyLeft = keyboard_check(ord("A"));
var _keyUp = keyboard_check(ord("W"));
var _keyDown = keyboard_check(ord("S"));
var _keyDash = keyboard_check_pressed(vk_space);
var _keyInventory = keyboard_check_pressed(ord("F"));
var _keyBomb = keyboard_check_pressed(ord("Q"));
// ********************


hsp = (_keyRight - _keyLeft) * spWalk;
vsp = (_keyDown - _keyUp) * spWalk;


// implement dash
// ********************
 if (_keyDash) && (dashCharges > 0)
 {
	if !(place_meeting(x * hsp, y * vsp, objWall))
	{
	dashCharges--;
	hsp *= spDash;
	vsp *= spDash;
	}
	
 }
 
 // timer for resetting dash charges
 if (dashCharges < dashMaxCharges)
 {
	dashTimer--;
	if (dashTimer <= 0)
	{
		dashCharges++;
		//reset timer
		dashTimer = dashBaseResetTime;
	}
 
 
 }
// ********************

// show inventory
if (_keyInventory)
{
	if (objInventory.visible)
	{
		state = PLAYERSTATE.FREE;
		objInventory.visible = false;
	} else {
		state = PLAYERSTATE.INV;
		objInventory.visible = true;
	}

}

// ******************** 

// BOMBS!
// ******************** 
if (_keyBomb)
{
	instance_create_layer(x, y, "Player", objBomb);

}
//


// collide and move
// ********************
if (place_meeting(x + hsp,  y, objWall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, objWall))
			x+= hsp;
	
	}
	hsp = 0;
}

x +=hsp;

if (place_meeting(x, y + vsp, objWall))
{
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, objWall))
			y += vsp;
	
	}
	vsp = 0;
}

y += vsp
// ********************
