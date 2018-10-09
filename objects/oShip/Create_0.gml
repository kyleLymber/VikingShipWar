/// @description Ship stuff

myNode = instance_nearest(x,y,oNode)
myTurnManager = instance_find(oTurnManager, 0);
previousNode = myNode;
x = myNode.x;
y = myNode.y;

attackDamage = 5;
pickedUp = false;
player = false;

// enemy AI
enemyShips = ds_list_create();
playerShips = ds_list_create();
closestShipsNode = noone;
ship = noone;
chosenShip = 0;
xDir = 0;
yDir = 0;
