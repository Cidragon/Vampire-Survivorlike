extends Node2D

@onready var player: Player = %Player
@onready var enemy_manager: Node2D = %enemy_manager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.player = player
	Global.enemy_manager = enemy_manager
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
