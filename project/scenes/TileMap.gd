extends TileMap

signal pos_changed(grid_pos)

var last_grid_pos = Vector2()
const TILE_SIZE = 32

func _ready():
	self.connect("pos_changed", $GridDebug, "_on_TileMap_pos_changed")
	
func _process(delta):
	var player_pos = $Player.position
	player_pos.x -= TILE_SIZE/2
	#player_pos.y += TILE_SIZE/2
	var tm_pos = world_to_map(player_pos)
	if (tm_pos != last_grid_pos):
		last_grid_pos = tm_pos
		emit_signal("pos_changed", tm_pos)
	
	