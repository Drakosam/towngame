extends Node

var actor_model_on_mouse = null
var curent_actor = null
# Called when the node enters the scene tree for the first time.

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func set_character_on_mouse(actor_model):
	actor_model_on_mouse = actor_model
	
	
func relyse_character():
	actor_model_on_mouse = null


func set_current_actor(actor):
	curent_actor = actor
