extends Camera2D

var map_move = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_A:
			position.x -= 5

		if event.pressed and event.keycode == KEY_W:
			position.y -= 5

		if event.pressed and event.keycode == KEY_S:
			position.y += 5

		if event.pressed and event.keycode == KEY_D:
			position.x += 5
	elif event is InputEventMouseButton: 
		if event.button_index == 3 and event.is_pressed():
			map_move = true
		if event.button_index == 3 and event.is_released():
			map_move = false
	elif event is InputEventMouseMotion and map_move:
		position+=event.relative
