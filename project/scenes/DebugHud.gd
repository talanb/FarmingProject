extends Control



func _on_TileMap_pos_changed(new_pos):
	$GridPos.text = String(new_pos)
