extends Camera2D


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
			print('aa ',position)
		if event.pressed and event.keycode == KEY_W:
			position.y -= 5
		if event.pressed and event.keycode == KEY_S:
			position.y += 5
		if event.pressed and event.keycode == KEY_D:
			position.x += 5
