extends CharacterBody2D

@onready var ray = $RayCast2D
@onready var navigation = $NavigationAgent2D

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("enemy")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_detect_player():
		var player = ray.get_collider()
		navigation.target_position = player.global_position
		var net_path_position = navigation.get_next_path_position()
		velocity = (net_path_position - global_position).normalized() * delta * 5000
		print(velocity)
		move_and_slide()
		look_at(player.global_position)

func is_detect_player():
	return ray.get_collider() and ray.get_collider().get_groups().find("player") != -1

