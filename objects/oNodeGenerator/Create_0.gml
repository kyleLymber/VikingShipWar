///@description Generate Nodes on the map

// get the total number of tiles in the x and y direction
// the -1 is to account for there being 1 extra due to the gap along the sides of the room
maxXTiles = (room_width / 150) - 1;
maxYTiles = (room_height / 150) - 1;

// create the global grid with the nodes 
// the grid will be used to aid in enemy AI
global.gameGrid = ds_grid_create(maxXTiles, maxYTiles);

// starting location of the center of the first node form the top left corner
xx = 180;
yy = 151;

// the offset between each node
xOff = 149;
yOff = 131;

// stagger size between the hexagons
stagger = 75;

// used in the loop to have a variable with a reference to the node that was created
node = noone;

for(i = 0; i < maxXTiles; i++) {
	for(j = 0; j < maxYTiles; j++) {
		
		// offset between each node
		xOffset = i*xOff;
		yOffset = j*yOff;
		
		// stagger between the hexagons
		stagger = 75*(j%2);
		
		// create and set the node in the grid
		node = instance_create_layer((xx + xOffset) - stagger, yy + yOffset, "Nodes", oNode);
		node.row = i;
		node.col = j;
		ds_grid_add(global.gameGrid, i, j, node);
		
		// decide if the node is a water or land node
		if (!position_meeting((xx + xOffset) - stagger, yy + yOffset, oLandColision)) {
			node.water = true
		} else {
			node.water = false;
		}
	}
}
// make sure the node is empty after the generation
node = noone;