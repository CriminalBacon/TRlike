function InventorySearch(rootObject, itemType)
{
	// checks inventory array for specific item
	for (var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		if (rootObject.inventory[i] == itemType)
		{
			return (i);
		}
	
	}
	// no matches, return -1
	return (-1);

}

function InventoryRemove(rootObject, itemType)
{
	var _slot = InventorySearch(rootObject, itemType);
	if (_slot != -1)
	{

		with (rootObject) inventory[_slot] = -1;
		return true;
		
	} else return false;

}

function InventoryAdd(rootObject, itemType)
{
	// looks for first empty slot
	var _slot = InventorySearch(rootObject, -1);
	if (_slot != -1)
	{
		with(rootObject) inventory[_slot] = itemType;
		return true;
		
	} else return false;

}

function InventorySwap(objectFrom, slotFrom, objectTo, slotTo)
{
	var _itemFrom = objectFrom.inventory[slotFrom];
	objectFrom.inventory[slotFrom] = objectTo.inventory[slotTo];
	objectTo.inventory[slotTo] = _itemFrom;


}