// change direction based on mouse position

image_angle = point_direction(x, y, mouse_x, mouse_y);

attackSpeed = attackSpeed - 1;
if (mouse_check_button(mb_left)) && (attackSpeed < 0)
{
	attackSpeed = mace.attackSpeed;
	with (instance_create_layer(x, y, "Bullets", objBullet))
	{
		sprite_index = objWeapon.mace.wAttackSprite
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}

}