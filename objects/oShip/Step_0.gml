/// @description Handle all ship actions

// if - handle picking up the ship and moving it to another node for the player
// else - handle enemy AI (moving a ship to another node)
if (myTurnManager.turn == "player") {
	if (mouse_check_button(mb_left) and position_meeting(mouse_x, mouse_y, self) and player) {
		x = mouse_x
		y = mouse_y
		pickedUp = true;
	}
	if (mouse_check_button_released(mb_left) and pickedUp) {
		myNode = instance_nearest(x,y,oNode)
		moveShip(myNode);
		pickedUp = false;
	}
} else if (myTurnManager.turn == "enemy") {
	chosenShip = irandom(ds_list_size(enemyShips));
	ship = ds_list_find_value(enemyShips,chosenShip);
	if (self == ship) {
		closestShipsNode = findClosestShipsNode();
		xDir = sign(closestShipsNode.row - myNode.row)
		yDir = sign(closestShipsNode.col - myNode.col)
		myNode = ds_grid_get(global.gameGrid,myNode.row + xDir, myNode.col + yDir)
		moveShip(myNode);
	}
}