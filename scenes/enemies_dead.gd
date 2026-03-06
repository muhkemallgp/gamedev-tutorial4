extends RigidBody2D


@export var sceneName:String = "LoseScreen"

func _on_fall_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		print(str("res://scenes/" + sceneName + ".tscn"))
		get_tree().call_deferred("change_scene_to_file", str("res://scenes/" + sceneName + ".tscn"))
	else:
		queue_free()
