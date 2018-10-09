/// @description Random direction change

var randD = irandom_range(-15, 15)
lerp(direction, direction + randD, room_speed)