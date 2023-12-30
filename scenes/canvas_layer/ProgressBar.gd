extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Signals.update_xp_bar.connect(update_xp_bar)

func update_xp_bar(xp : int) -> void:
	value = xp
