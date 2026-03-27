extends TextureButton

func _pressed() -> void:
	if GameManager.current_level_path != "":
		# Memanggil pindah scene setelah frame ini selesai (lebih aman)
		get_tree().call_deferred("change_scene_to_file", GameManager.current_level_path)
	else:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/Level1.tscn")
