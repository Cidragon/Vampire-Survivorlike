extends CharacterBody2D

@export var xp_bag_scene : PackedScene

const speed : int = 50

func _process(delta: float) -> void:
	var player_position : Vector2 = Global.player.global_position
	var target_position : Vector2 = (player_position - global_position).normalized()
	velocity = target_position * speed
	move_and_slide()

func die() -> void:
	create_loot()
	queue_free()

func create_loot() -> void:
	var xp_bag : XPBag = xp_bag_scene.instantiate()
	xp_bag.position = position
	get_tree().get_root().add_child(xp_bag)
