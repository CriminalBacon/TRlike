inventoryHover = - 1;
slotHover = -1;
inventoryDrag = - 1;
slotDrag = -1;
itemDrag = -1;


mouseOver = function()
{
	//empty hover results
	slotHover = -1;
	inventoryHover = -1;
	
	//mouse coordinates
	var _mx = mouse_x;
	var _my = mouse_y;
	
	//check for inventory slot hover
	with (objInventory)
	{
		if (point_in_rectangle
		(
			_mx,
			_my,
			x-6,
			y-6,
			x-6 + 12+rowLength*36,
			y-6 + 12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36
		))
		{
			//check for mouseOver in each slot
			for (var i = 0; i < INVENTORY_SLOTS; i += 1)
			{
				var _xx = x + (i mod rowLength) * 36 + 2;
				var _yy = y + (i div rowLength) * 36 + 2;
				if (point_in_rectangle(_mx, _my, _xx, _yy, _xx+32, _yy+32))
				{
					other.slotHover = i;
					other.inventoryHover = id;
				}
			}
		
		
		}
		
	}


}

mouseStateFree = function()
{
	mouseOver();
	//start to drag an item if slot is not empty
	if (mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)
	{
		//enter drag state
		mouseState = mouseStateDrag;
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
	
	}

}

mouseStateDrag = function()
{
	mouseOver();
	if (!mouse_check_button(mb_left))
	{
		//swap with slot if hovering
		if (slotHover != -1) InventorySwap(inventoryDrag, slotDrag, inventoryHover, slotHover)
		
		//return to free state
		mouseState = mouseStateFree;
		itemDrag = -1
		inventoryDrag = -1
		slotDrag = -1;
		
	}

}

mouseState = mouseStateFree;
