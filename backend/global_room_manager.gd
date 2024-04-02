extends Node

var current_room = null
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func set_current_room(room):
	print(room.name)
	current_room = room
	

func make_room_empty():
	current_room.meake_empty()
	
