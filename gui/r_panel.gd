extends Panel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hide_all_panels():
	for child in $Body.get_children():
		child.visible=false

func show_room_panel():
	hide_all_panels()
	$Body/RoomPanel.show_panel()


func show_actor_panel():
	hide_all_panels()
	$Body/ActorPanel.show_panel()


