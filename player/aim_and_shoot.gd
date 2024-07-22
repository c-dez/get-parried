extends Node2D

var cross_hair:Sprite2D

func _ready() -> void:
	cross_hair = get_node("cross_hair")
	
func _process(delta: float) -> void:
	cross_hair.global_position = get_global_mouse_position()
	queue_redraw()
	
func _draw() -> void:
	if Input.is_action_pressed("mouse2"):
		draw_line(position,cross_hair.position,Color(0,0,1,0.5),)
