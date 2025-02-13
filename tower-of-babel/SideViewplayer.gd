extends CharacterBody2D


const SPEED = 300.0
const LERPSPEED = 10


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		rotation = lerp(rotation, get_floor_normal().angle() + PI/2, LERPSPEED*delta)
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	velocity.rotated(rotation)
	
	move_and_slide()
