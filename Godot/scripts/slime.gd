extends Node2D

const SPEED = 60
var direction = 1

@onready var right = $right
@onready var left = $left
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var game_manager = %GameManager

func _process(delta):
	if right.is_colliding() or left.is_colliding():
		direction*=-1
		animated_sprite_2d.flip_h = !animated_sprite_2d.flip_h

	position.x += SPEED * delta * direction
