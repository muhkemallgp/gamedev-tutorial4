extends TextureButton


func _pressed():
	# Reset nyawa biar bisa main lagi dari awal
	GameManager.lives = 3 
	get_tree().call_deferred("change_scene_to_file", "res://scenes/MainMenu.tscn")
