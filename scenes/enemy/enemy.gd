extends CharacterBody2D

const speed : int = 100

func _ready() -> void:
	velocity = Vector2(speed,speed)

func _process(delta: float) -> void:
	var player_position : Vector2 = Global.player.global_position
	var target_position : Vector2 = (player_position - global_position).normalized()
	velocity = target_position * speed
	move_and_slide()
