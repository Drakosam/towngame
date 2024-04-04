extends Panel


var not_block_interaction = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	

func show_panel():
	visible=true
	$VBoxContainer/CellName.text = GlobalRoomManager.current_room.name


func _on_make_empty_btt_pressed():
	GlobalRoomManager.make_room_empty()


func _on_make_den_btt_pressed():
	GlobalRoomManager.make_room_as_den()
