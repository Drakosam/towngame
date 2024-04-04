extends Node2D

signal actor_picked_signal(actor)

var status = "IDLE"
var max_hp = 10
var hp = 1
var max_stamina = 100
var stamina = 1
var max_mana = 10
var mana = 1

var rest_charge = 0

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
	if mision_name_id == 'idle':
		status = "IDLE"
	elif mision_name_id == 'rest':
		status = "REST"
	elif mision_name_id == 'hasle':
		status = "HASLE"


func act():
	if status == "IDLE":
		_idle_process()
	elif status == "REST":
		_rest_process()
	elif status == "HASLE":
		_hasle_process()


func _idle_process():
	rest_charge +=1 
	if max_stamina> stamina and rest_charge >= 10:
		stamina += 1
		rest_charge -= 10
	
	elif max_mana>mana and rest_charge >= 30:
		rest_charge -= 30
		mana += 1
		
	elif rest_charge > 100:
		rest_charge = 100


func _rest_process():
	rest_charge +=1 
	if max_stamina> stamina and rest_charge >= 10:
		rest_charge -= 10
		stamina += 3
		if stamina > max_stamina:
			stamina = max_stamina
	
	elif max_hp>hp and rest_charge >= 30:
		rest_charge -= 10
		hp += 1
		
	elif max_mana>mana and rest_charge >= 15:
		rest_charge -= 10
		mana += 1
		
	elif rest_charge > 31:
		run_mission('idle')	


func _hasle_process():
	rest_charge = 0
	if stamina > 0:
		stamina -=1 
