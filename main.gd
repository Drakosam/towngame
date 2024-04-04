extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_mansion_cell_picked_signal(cell):
	GlobalRoomManager.set_current_room(cell)
	$CanvasLayer/RPanel.visible = true
	$CanvasLayer/RPanel.show_room_panel()


func _on_actor_menager_show_actor_signal(actor):
	GolobalVariable.set_current_actor(actor)
	$CanvasLayer/RPanel.visible = true
	$CanvasLayer/RPanel.show_actor_panel()

