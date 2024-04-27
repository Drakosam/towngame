extends Node2D

var colorAttic = Color("#5B3E31")
var colorFlor = Color("#765341")
var colorGroundFlor = Color("#BCA89F")
var colorBasement = Color("#B4C5CE")
var colorBasementL2 = Color("#809AA9")

var roomIcon = "notOwned"
var accessible = false

signal pick_me(cell)
signal cell_updated_signal()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func set_color_scheme(color_sheme):
	if color_sheme == 4:
		$ColorRect.color = colorAttic
		
	if color_sheme == 3:
		$ColorRect.color = colorFlor
	
	if color_sheme == 2:
		$ColorRect.color = colorGroundFlor
	
	if color_sheme == 1:
		$ColorRect.color = colorBasement
	
	if color_sheme == 0:
		$ColorRect.color = colorBasementL2


func hide_all():
	$NotOwned.visible = false
	$IconStairs.visible = false
	$IconEmptyRoom.visible = false
	$IconDen.visible = false


func make_as_den():
	hide_all()
	$IconDen.visible = true
	accessible = true
	emit_signal("cell_updated_signal")

func set_as_stairs():
	hide_all()
	$IconStairs.visible = true
	accessible = true
	emit_signal("cell_updated_signal")
	
func set_as_not_owned():
	hide_all()
	$NotOwned.visible = true
	accessible = false
	emit_signal("cell_updated_signal")

func meake_empty():
	hide_all()
	$IconEmptyRoom.visible = true
	accessible = true
	emit_signal("cell_updated_signal")


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			if GolobalVariable.actor_model_on_mouse == null:
				emit_signal("pick_me",self)
			
