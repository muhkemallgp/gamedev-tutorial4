extends Label

func _process(_delta):
	# Update teks secara real-time dari variabel global
	self.text = "Lives: " + str(GameManager.lives)
