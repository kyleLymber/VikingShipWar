/// @function moveShip(oNode);
/// @description Handles all movement of ships on the map
/// @param oNode the ship to compare against

var myNode = argument0;
if (myNode != noone) {
	if (myNode.water and myNode.ship == noone) {
		x = myNode.x;
		y = myNode.y;
		previousNode.ship = noone;
		previousNode = myNode;
		myNode.ship = self;
		endTurn();
	} else if (myNode.water and myNode.ship != noone and object_is_ancestor(myNode.ship.object_index, oShip) and myNode.ship.player != player) {
		myNode.ship = attackShip(myNode.ship);
		endTurn();
	} else {
		x = previousNode.x;
		y = previousNode.y;
	}
}