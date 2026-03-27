extends LinkButton


func _on_stage_select_pressed():
	get_tree().change_scene_to_file("res://scenes/StageSelect.tscn")
