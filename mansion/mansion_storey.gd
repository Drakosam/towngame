extends Node2D

var MCell = preload("res://mansion/mansion_cell.tscn")

var color_sheme_value = 3
signal cell_picked_signal(cell)
signal cell_updated_signal()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func setup_storey(size):
	if "Attic" in name:
		color_sheme_value =4
	if "Ground" in name:
		color_sheme_value =2
	if "L1" in name:
		color_sheme_value =1
	if "L2" in name:
		color_sheme_value =0
	set_cells_size(size)


func set_cells_size(cell_count):
	for i in range(cell_count):
		var item = MCell.instantiate()
		
		item.position.y = 0
		item.position.x = 0 + (150*i)
		item.set_color_scheme(color_sheme_value)
		item.name = name+"#"+str(i)
		item.connect('pick_me',cell_picked)
		item.connect('cell_updated_signal',cell_updated)

		if (i+2)%3==0:
			item.set_as_stairs()
		else:
			item.set_as_not_owned()

		add_child(item)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func cell_picked(cell):
	emit_signal("cell_picked_signal",cell)
	
func cell_updated():
	emit_signal("cell_updated_signal")
	

func get_availability():
	var data = []
	for ch in get_children():
		data.append(ch.accessible)
	return data
	
