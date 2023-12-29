extends CharacterBody2D
class_name Player

const speed : int = 200
@export var arrow : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


var _timer : float = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move_and_slide()
	_timer += delta
	if _timer >= 1.0:
		_timer -= 1.0
		var new_arrow : Arrow = arrow.instantiate()
		var mouse_position : Vector2 = get_global_mouse_position()
		var target_position : Vector2 = (mouse_position - position).normalized()
		new_arrow.direction = target_position
		new_arrow.position = position
		new_arrow.rotation_degrees = rad_to_deg(position.angle_to_point(mouse_position))
		print(new_arrow.rotation_degrees)
		get_tree().get_root().add_child(new_arrow)

func _unhandled_input(event: InputEvent) -> void:
	var accumulator : Vector2 = Vector2(0,0)
	
	if Input.is_action_pressed("up"):
		accumulator.y -= speed
	if Input.is_action_pressed("down"):
		accumulator.y += speed
	if Input.is_action_pressed("left"):
		accumulator.x -= speed
	if Input.is_action_pressed("right"):
		accumulator.x += speed
		
	velocity = accumulator


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemy"):
		print("got hit by enemy")
		body.queue_free()

func get_tan() -> float:
	return 0
