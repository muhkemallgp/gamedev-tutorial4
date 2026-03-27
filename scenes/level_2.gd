extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.current_level_path = get_tree().current_scene.scene_file_path
