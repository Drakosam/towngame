extends Node2D

signal actor_picked_signal(actor)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			emit_signal("actor_picked_signal",self)


func _on_area_2d_mouse_entered():
	GolobalVariable.set_character_on_mouse(self)


func _on_area_2d_mouse_exited():
	GolobalVariable.relyse_character()
