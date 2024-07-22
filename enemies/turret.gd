extends CharacterBody2D


@onready var bullet = preload("res://enemies/enemy_1.tscn")
@onready var pivot = get_node("pivot")
@onready var spawn = get_node("pivot/spawn")
@onready var ray = get_node("pivot/RayCast2D")

var degres =0

func _physics_process(delta: float) -> void:
	if !ray.is_colliding():
		degres += 360/4 * delta
	
	pivot.set_rotation_degrees(degres)

		
