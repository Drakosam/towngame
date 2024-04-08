extends Panel


func _ready():
	pass # Replace with function body.


func _process(delta):
	if GolobalVariable.curent_actor:
		$VBoxContainer/JobStatus.max_value = GolobalVariable.curent_actor.max_job_progres
		$VBoxContainer/JobStatus.value = GolobalVariable.curent_actor.job_progres
		$VBoxContainer/JobStatus/ActorStatus.text = "Status :: " + GolobalVariable.curent_actor.get_status()
		
		$VBoxContainer/HP.max_value = GolobalVariable.curent_actor.max_hp
		$VBoxContainer/HP.value = GolobalVariable.curent_actor.hp
		$VBoxContainer/HP/Label.text = "HP "+str(GolobalVariable.curent_actor.hp) +"/"+ str(GolobalVariable.curent_actor.max_hp)
		
		$VBoxContainer/Stamina.max_value = GolobalVariable.curent_actor.max_stamina
		$VBoxContainer/Stamina.value = GolobalVariable.curent_actor.stamina
		$VBoxContainer/Stamina/Label.text = "Stamina "+str(GolobalVariable.curent_actor.stamina) +"/"+ str(GolobalVariable.curent_actor.max_stamina)
		
		$VBoxContainer/Mana.max_value = GolobalVariable.curent_actor.max_mana
		$VBoxContainer/Mana.value = GolobalVariable.curent_actor.mana
		$VBoxContainer/Mana/Label.text = "Mana "+str(GolobalVariable.curent_actor.mana) +"/"+ str(GolobalVariable.curent_actor.max_mana)


func show_panel():
	visible=true
	$VBoxContainer/ActorName.text = GolobalVariable.curent_actor.name


func _on_go_idle_pressed():
	GolobalVariable.curent_actor.run_mission("idle")


func _on_go_rest_pressed():
	GolobalVariable.curent_actor.run_mission("rest")


func _on_go_hasle_pressed():
	GolobalVariable.curent_actor.run_mission("hasle")
