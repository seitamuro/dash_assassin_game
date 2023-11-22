extends CharacterBody2D

@onready var ray = $RayCast2D

func _physics_process(_delta):
	if ray.is_colliding():
		print(ray.get_collider().get_name())
	else:
		print("Not colliding")
