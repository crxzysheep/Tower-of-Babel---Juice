extends RigidBody2D

var playerInArea = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if playerInArea:
		if Input.is_action_just_pressed("interact"):
			Dialogic.start("timeline")


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		playerInArea = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		playerInArea = false # Replace with function body.
