/// @function moveShip(oShip);
/// @description Handles all attacking of ships on the map
/// @param oShip the ship to compare against

var otherShip = argument0;

if (otherShip.attackDamage > self.attackDamage) {
	instance_destroy();
	return otherShip;
} else if (otherShip.attackDamage < self.attackDamage) {
	instance_destroy(otherShip);
	return self;
} else {
	instance_destroy(otherShip);
	instance_destroy();
	return noone;
}
