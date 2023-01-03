// @desc  initizalise variables 
hsp = 0; //current horizontal speed
vsp = 0; // current vertical speed
spWalk = 3.5 //walk speed
spDash = 25;
dashMaxCharges = 2;
dashCharges = dashMaxCharges;
dashBaseResetTime = room_speed * 5;
dashTimer = dashBaseResetTime
state = PLAYERSTATE.FREE;

//initialize player



//create inventory
instance_create_layer(x - 32, y + 32, "Player", objInventory);
objInventory.visible = false;

