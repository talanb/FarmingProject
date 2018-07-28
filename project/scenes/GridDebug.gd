extends Node2D


const TILE_SIZE = Vector2(32, 32)
export var LINE_COLOR = Color(1.0, 1.0, 1.0, 0.4)
export var LINE_WIDTH = 2


var last_pos = Vector2()
var debug_rect = Rect2()

	
func _process(delta):
	update()
	
func _on_TileMap_pos_changed(grid_pos):
	var rect = Rect2(grid_pos * TILE_SIZE, TILE_SIZE)
	if grid_pos != last_pos:
		self.position = (grid_pos + Vector2(1,1))* TILE_SIZE
		self.visible = true
		last_pos = grid_pos
		print(grid_pos)

