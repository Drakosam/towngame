extends Node2D

var PlayerEntity = preload("res://actor/actor_type/player_actor.tscn")
var BruteEntity = preload("res://actor/actor_type/brute_actor.tscn")
var BeggarEntity = preload("res://actor/actor_type/beggar_actor.tscn")

var lvlel_attic = 140
var lvlel_floor_4 = lvlel_attic + 150 
var lvlel_floor_3 = lvlel_floor_4 + 150
var lvlel_floor_2 = lvlel_floor_3 + 150
var lvlel_floor_1 = lvlel_floor_2 + 150
var lvlel_ground_floor = lvlel_floor_1 + 150
var lvlel_basement_l_1 = lvlel_ground_floor + 150
var lvlel_basement_l_2 = lvlel_basement_l_1 + 150

var pos_1 = 35
var pos_2 = 72
var pos_3 = 112
var pos_4 = 150


var slot_outside = []

signal show_actor_signal(actor)


func _ready():
	pass


func _process(_delta):
	pass


func show_actor_event(actor):
	emit_signal("show_actor_signal",actor)


func act():
	for child in get_children():
		child.act()


func spawn_actor(actor_seed):
	if actor_seed['type']=='player':
		_spown_player()


func _spown_player():
	var actor = PlayerEntity.instantiate()
	add_child(actor)
	actor.connect('actor_picked_signal',show_actor_event)
	_add_to_oudside_slot(actor)


func _add_to_oudside_slot(actor):
	slot_outside.append(actor)
	for i in range(len(slot_outside)) :
		slot_outside[i].position.x = -50 - 40 * i
		slot_outside[i].position.y = lvlel_ground_floor


func update_movment_map(new_map):
	for ch in get_children():
		ch.map_movment = new_map
