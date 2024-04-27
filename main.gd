extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$ActorMenager.spawn_actor({'type':'player'})
	$ActorMenager.spawn_actor({'type':'player'})
	$ActorMenager.spawn_actor({'type':'player'})


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


func _on_timer_timeout():
	$ActorMenager.act()


func _on_mansion_update_availability(map):
	$ActorMenager.update_movment_map(map)
