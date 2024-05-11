extends Node

var point = 0
var health = 3
@onready var score = $Score

func add_score():
	point += 1
	score.text = "That's it \nYou collected \n"+str(point)+" Coin"
	
func get_hit():
	health -= 1
