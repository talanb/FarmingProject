extends Node2D

export var walk_speed = 180
export var run_speed = 200

func _ready():
	pass

func _process(delta):
	# Move player
	var player_movement = Vector2()
	if (Input.is_action_pressed("ui_up")):
		player_movement.y -= 1
	if (Input.is_action_pressed("ui_down")):
		player_movement.y += 1
	if (Input.is_action_pressed("ui_left")):
		player_movement.x -= 1
	if (Input.is_action_pressed("ui_right")):
		player_movement.x += 1
	
	position += player_movement.normalized() * walk_speed * delta
