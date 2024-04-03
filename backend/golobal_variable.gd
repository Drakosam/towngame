extends Node

var agent_on_mouse = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func set_character_on_mouse(agent):
	agent_on_mouse = agent
	
	
func relyse_character():
	agent_on_mouse = null
