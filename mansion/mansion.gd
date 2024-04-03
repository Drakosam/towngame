extends Node2D


signal cell_picked_signal(cell)
# Called when the node enters the scene tree for the first time.
func _ready():
	for ch in get_children():
		ch.setup_storey(9)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _cell_picked_signal(cell):
	emit_signal('cell_picked_signal',cell)
