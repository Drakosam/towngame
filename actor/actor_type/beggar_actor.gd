extends "res://actor/actor_type/actor.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	super._process(delta)


func _actor_picked():
	emit_signal("actor_picked_signal",self)


func _hasle_result():
	print('beggar hasle result')
