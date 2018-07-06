extends TileMap

func _process(delta):
	var player_pos = $Player.position
	get_cell(player_pos.x, player_pos.y)
