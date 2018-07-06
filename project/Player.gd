extends Node2D

export var walkSpeed = 120
export var runSpeed = 200

func _ready():
	pass

func _process(delta):
	if (Input.is_key_pressed("ui.up")):
		

