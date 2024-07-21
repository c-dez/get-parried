extends CharacterBody2D

var speed:int = 400
@onready var pivot = get_node("pivot")
var direction

func _physics_process(delta: float) -> void:
	move()
	if direction != Vector2.ZERO:
		var rot_rad = atan2(direction.y, direction.x)
		pivot.set_rotation(rot_rad)
	
	
func move():
	direction = Input.get_vector("left","right","up", "down")
	direction.normalized()
	velocity = direction * speed
	move_and_slide()
