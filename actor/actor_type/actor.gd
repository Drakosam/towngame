extends Node2D

signal actor_picked_signal(actor)

var current_entity= null

var status = "IDLE"
var max_hp = 10
var hp = max_hp
var max_stamina = 100
var stamina = max_stamina
var max_mana = 10
var mana = max_mana

var job_progres = 0
var max_job_progres = 10
var background_procces = 0

var pos = -100 # outside

var map_movment = []

var rng = RandomNumberGenerator.new()

func _ready():
	pass


func _process(_delta):
	pass


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			emit_signal("actor_picked_signal",self)


func _on_area_2d_mouse_entered():
	GolobalVariable.set_character_on_mouse(self)


func _on_area_2d_mouse_exited():
	GolobalVariable.relyse_character()


func get_status():
	return status


func run_mission(mision_name_id):
	job_progres = 0
	max_job_progres = 1
	background_procces = 0
	if mision_name_id == 'idle':
		status = "IDLE"
	elif mision_name_id == 'rest':
		status = "REST"
	elif mision_name_id == 'hasle':
		max_job_progres = 100
		status = "HASLE"
	elif mision_name_id == 'move':
		max_job_progres = 70
		status = 'MOVE'

func act():
	if status == "IDLE":
		_idle_process()
	elif status == "REST":
		_rest_process()
	elif status == "HASLE":
		_hasle_process()
	elif status == "MOVE":
		_movment_process()


func _idle_process():
	background_procces +=1 
	if max_stamina> stamina and background_procces >= 10:
		stamina += 1
		background_procces -= 10
	
	elif max_mana>mana and background_procces >= 30:
		background_procces -= 30
		mana += 1
		
	elif background_procces > 100:
		background_procces = 100
		if rng.randi_range(0,10) > 8:
			run_mission('move')


func _rest_process():
	background_procces +=1 
	if max_stamina> stamina and background_procces >= 10:
		background_procces -= 10
		stamina += 3
		if stamina > max_stamina:
			stamina = max_stamina
	
	elif max_hp>hp and background_procces >= 30:
		background_procces -= 10
		hp += 1
		
	elif max_mana>mana and background_procces >= 15:
		background_procces -= 10
		mana += 1
		
	elif background_procces > 31:
		run_mission('idle')	


func _hasle_process():	
	job_progres += 1
	if job_progres >= max_job_progres:
		job_progres -= max_job_progres
		stamina -= rng.randi_range(5,35)
		_hasle_result()
		
	if stamina < 35:
		run_mission('idle')


func _hasle_result():
	pass
	

func _movment_process():
	job_progres += 1
	if job_progres >= max_job_progres:
		stamina -= rng.randi_range(5,15)
		run_mission('idle')


func _on_actor_model_actor_picked_signal():
	emit_signal("actor_picked_signal",self)
