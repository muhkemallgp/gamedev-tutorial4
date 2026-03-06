extends Sprite2D

# Variabel untuk menentukan tujuan level selanjutnya di Inspector
@export var target_level: String = "Level2"

# Fungsi ini akan dipicu saat tombol ditekan
func _on_button_pressed():
	# Membangun path file scene secara dinamis
	var path = "res://scenes/" + target_level + ".tscn"
	# Berpindah ke scene tujuan
	get_tree().change_scene_to_file(path)
