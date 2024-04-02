extends Node2D

var colorAttic = Color("#5B3E31")
var colorFlor = Color("#765341")
var colorGroundFlor = Color("#BCA89F")
var colorBasement = Color("#B4C5CE")
var colorBasementL2 = Color("#809AA9")

var roomIcon = "notOwned"

signal pick_me(cell)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
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
	

func set_as_stairs():
	hide_all()
	$IconStairs.visible = true
	
	
func set_as_not_owned():
	hide_all()
	$NotOwned.visible = true


func meake_empty():
	hide_all()
	$IconEmptyRoom.visible = true


func _on_button_pressed():
	emit_signal("pick_me",self)
