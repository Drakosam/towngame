extends Node2D

var ActorEntity = preload("res://actor/actor.tscn")

var lvlel_attic = 140
var lvlel_floor_4 = lvlel_attic + 150 
var lvlel_floor_3 = lvlel_floor_4 + 150
var lvlel_floor_2 = lvlel_floor_3 + 150
var lvlel_floor_1 = lvlel_floor_2 + 150
var lvlel_ground_floor = lvlel_floor_1 + 150
var lvlel_basement_l_1 = lvlel_ground_floor + 150
var lvlel_basement_l_2 = lvlel_basement_l_1 + 150

signal show_actor_signal(actor)

# Called when the node enters the scene tree for the first time.
func _ready():
	$Agent.position.x = 100
	$Agent.position.y = lvlel_attic


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func show_actor_event(actor):
	emit_signal("show_actor_signal",actor)


func act():
	for child in get_children():
		child.act()
