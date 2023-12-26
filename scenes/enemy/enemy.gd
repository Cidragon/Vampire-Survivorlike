extends CharacterBody2D

const speed : int = 100

func _process(delta: float) -> void:
	var player_position : Vector2 = Global.player.position
	
	if player_position.y > position.y:
		velocity.y = speed
	elif player_position.y < position.y:
		velocity.y = -speed
	
	if player_position.x > position.x:
		velocity.x = speed
	elif player_position.x < position.x:
		velocity.x = -speed
	
	move_and_slide()
	pass
