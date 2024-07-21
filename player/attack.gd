extends Node2D

@onready var area = get_node("Area2D")
@onready var hit_box = get_node("Area2D/Hit_box")
var areas_array:Array

func _ready() -> void:
	hit_box.set_debug_color(Color(1,0,0,0.3))

func _physics_process(delta: float) -> void:
	detect_areas()
	parry()
	
	
func detect_areas()->Array:
	if area.has_overlapping_areas():
		#if Input.is_action_just_pressed("mouse1"):
		areas_array = area.get_overlapping_areas()
			#print(areas_array)
		return areas_array
	else:
		areas_array = []
		return areas_array 
		
func parry():
	if Input.is_action_just_pressed("mouse1"):
		for item in areas_array:
			item.get_parried()
	
	
