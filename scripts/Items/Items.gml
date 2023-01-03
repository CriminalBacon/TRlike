function Weapon(_attackSpeed, _wSprite, _wObject, _wAttackSprite) constructor
{
	attackSpeed = _attackSpeed;
	wSprite = _wSprite;
	wObject = _wObject;
	wAttackSprite = _wAttackSprite

}

function CreateInitalWeapons()
{
	sword = new Weapon(10, sprSword, objWeapon, sprBullet);
	mace = new Weapon(20, sprMace, objWeapon, sprMaceAttack);


}

function InitializePlayer(_hp, _dashCharges, _weapon, _state)
{
	hp = _hp;
	dashCharges = _dashCharges;
	weapon = _weapon;
	state = _state;


}