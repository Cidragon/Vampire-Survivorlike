extends CharacterBody2D
class_name Player

const speed : int = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move_and_slide()

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
