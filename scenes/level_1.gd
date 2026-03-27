extends Node2D

func _ready() -> void:
	#print(get_tree().current_scene.scene_file_path)
	#print("okay")
	GameManager.current_level_path = get_tree().current_scene.scene_file_path
