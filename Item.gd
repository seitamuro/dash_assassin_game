extends CharacterBody2D

func _physics_process(_delta):
	var collide = move_and_collide(Vector2.ZERO)
	if collide:
		print(collide.collider.name)
	else:
		print("no collision")
