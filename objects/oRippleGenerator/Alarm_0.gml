/// @description Create new Ripple

// randomly 
var randX = choose(-100, WIDTH + 100)
var randY = random_range(0, HEIGHT)
var ripple = instance_create_layer(randX, randY, layer, oRipple)

ripple.speed = random_range(minSpeed, maxSpeed)
ripple.sprite_index = sRipple[irandom(2)]

if ripple.x <= 0
	ripple.direction = 0
else
	ripple.direction = 180

ripple = noone