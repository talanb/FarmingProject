extends TileMap

signal pos_changed

var last_grid_pos = Vector2()
const TILE_SIZE = 32

func _process(delta):
	var tm_pos = world_to_map($Player.position)
	if (tm_pos != last_grid_pos):
		last_grid_pos = tm_pos
		emit_signal("pos_changed", tm_pos)
	
	