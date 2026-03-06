extends Node2D

@export var obstacle : PackedScene
@export var speed:int = -400

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
	spawn_pos.y = spawn_pos.y + randf_range(-100,100)
	
	# get the enemy in the position chosen
	spawned.global_position = spawn_pos

	# fill the speed of enemy
	spawned.linear_velocity = Vector2(speed, 0)
	
func repeat():
	spawn()
	## hehehehe
	await get_tree().create_timer(1).timeout
	repeat()
