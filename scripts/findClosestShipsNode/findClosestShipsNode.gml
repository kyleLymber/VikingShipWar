/// @function findClosestShipsNode()
/// @description find the closest player ship to this enemy ship

var ship = ds_list_find_value(playerShips, 0);
var closestShip = ship;
for (i = 1; i < ds_list_size(playerShips); i++) {
	ship = ds_list_find_value(playerShips, i);
	if (distance_to_object(ship) < distance_to_object(closestShip)) {
		closestShip = ship;
	}
}
return closestShip.myNode;
