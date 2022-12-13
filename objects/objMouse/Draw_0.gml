if (itemDrag != -1)
{
	//draw drag item transparent
	draw_set_alpha(0.5);
	draw_sprite(sprItems, itemDrag, mouse_x, mouse_y);
	draw_set_alpha(1.0);


}