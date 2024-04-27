extends Node2D

var map_ready = false

signal cell_picked_signal(cell)
signal update_availability(map)
# Called when the node enters the scene tree for the first time.
func _ready():
	for ch in get_children():
		ch.setup_storey(9)
	_uptade_availability()
	map_ready = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _cell_picked_signal(cell):
	emit_signal('cell_picked_signal',cell)


func _update_cell_proc():
	if not map_ready:
		return
	_uptade_availability()


func _uptade_availability():
	var data = []
	for ch in get_children():
		print(ch.get_availability())
	emit_signal("update_availability",data)
