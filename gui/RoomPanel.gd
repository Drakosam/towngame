extends Panel


var not_block_interaction = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not GlobalRoomManager.current_room:
		visible = false 
	

func set_cell(cell_name):
	$VBoxContainer/CellName.text = cell_name


func _on_make_empty_btt_pressed():
	GlobalRoomManager.make_room_empty()
