extends Node2D

const TILE_SIZE = Vector2(32, 32)

func _process(delta):
	update()
	
func _draw():
	var LINE_COLOR = Color(1.0, 1.0, 1.0, 0.4)
	var LINE_WIDTH = 2
	var player_pos = get_parent().position
	player_pos.y += 16
	var grid_pos = get_parent().get_parent().world_to_map(player_pos)
	var rect = Rect2(to_local(grid_pos * TILE_SIZE), TILE_SIZE)
	var a = 1
	draw_rect(rect, LINE_COLOR, false)