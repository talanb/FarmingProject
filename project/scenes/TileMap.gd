extends TileMap

const TILE_SIZE = 32

func _process(delta):
	var tm_pos = world_to_map($Player.position)
	
	print("current pos=%s" % tm_pos)