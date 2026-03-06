extends Node2D

@export var obstacle : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	repeat()

func spawn():
	# initiated the enemy
	var spawned = obstacle.instantiate()
	get_parent().add_child.call_deferred(spawned)
	
	# scaled the enemy
	spawned.scale = Vector2(0.5,0.5)
	
	# get the random position of the enemy
	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(-1000,1000)
	
	# get the enemy in the position chosen
	spawned.global_position = spawn_pos
	
func repeat():
	spawn()
	## hehehehe
	await get_tree().create_timer(0.5).timeout
	repeat()
