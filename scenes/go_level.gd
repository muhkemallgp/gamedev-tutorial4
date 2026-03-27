extends LinkButton

@export var level = ""

func _pressed():
	get_tree().call_deferred("change_scene_to_file", "res://scenes/" + level + ".tscn")
