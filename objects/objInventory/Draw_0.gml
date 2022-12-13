draw_sprite_stretched
(
	sprInventory,
	0,
	x-6,
	y-6,
	12+rowLength*36,
	12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36
);


// draw inventory
for (var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	var xx = x + (i mod rowLength) * 36 + 2;
	var yy = y + (i div rowLength) * 36 + 2;
	
	// if hovering over a blank slot, draw the second frame of the sprSlot sprite
	var hover = (objMouse.inventoryHover == id) && (objMouse.slotHover == i)
	draw_sprite(sprSlot, hover, xx, yy)

	if (inventory[i] != -1)
	{
		var alpha = 1.0
		if (objMouse.inventoryDrag == id) && (objMouse.slotDrag == i) alpha = 0.5
		draw_set_alpha(alpha);
		draw_sprite(sprItems, inventory[i], xx, yy);
		draw_set_alpha(1.0);
	}

}