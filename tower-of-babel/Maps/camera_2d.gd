extends Camera2D

@onready var player = $"../Player"

var SPEED = 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = lerp(position, player.position, SPEED*delta)
