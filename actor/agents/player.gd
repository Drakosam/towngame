extends "res://actor/actor.gd"

func _ready():
	pass # Replace with function body.


func _process(delta):
	pass
	

func hasle():
	job_progres += 1
	if job_progres >= max_job_progres:
		job_progres -= max_job_progres
		stamina -= rng.randi_range(5,35)
	
	if stamina < 35:
		run_mission('idle')

