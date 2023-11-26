extends CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("/root/Global").DEBUG_PLAYER_FORCE_DIRECTION:
		$Line2D.visible = true

	add_to_group("player")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if get_node("/root/Global").DEBUG_PLAYER_RIGID_STATUS:
		#print("velocity: ", get_linear_velocity())
		#print("inertia: ", get_inertia())
		print("Player do not extend CharacterBody2D")


# スワイプ中の処理
func _on_swipe_controller_swiping(vec):
	if get_node("/root/Global").DEBUG_SHOW_SWIPE_LOG:
		$Line2D.set_point_position(1, vec)
	
	if get_node("/root/Global").PLAYER_OPERATION_MODE == "SWIPE":
		move_and_collide(vec / 100)


# 指を話した瞬間の処理
func _on_swipe_controller_swipe(_vec):
	if get_node("/root/Global").PLAYER_OPERATION_MODE == "FLIP":
		#apply_impulse(_vec)
		print("Player do not extend CharacterBody2D")
