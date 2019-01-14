extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass


func _process(delta):
	position.x += Global.Ground_speed*delta
	Global.pterodactyl_b = true
	
	if get_global_position().x <= -50:
		Global.obstacle = null
		Global.pterodactyl_b = false
		queue_free()