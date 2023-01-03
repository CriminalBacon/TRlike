draw_set_font(fntFont);

//create weapon object
instance_create_layer(x, y, "Weapon", objWeapon);

instance_create_layer(x + 100, y + 100, "Player", objWeapon);