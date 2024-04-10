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
