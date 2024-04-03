extends Node

var current_room = null
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func set_current_room(room):
	print(room.name)
	current_room = room
	

func make_room_empty():
	current_room.meake_empty()
	
func make_room_as_den():
	current_room.make_as_den()
	
