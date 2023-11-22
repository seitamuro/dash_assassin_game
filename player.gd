extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("/root/Global").DEBUG_PLAYER_FORCE_DIRECTION:
		$Line2D.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if get_node("/root/Global").DEBUG_PLAYER_RIGID_STATUS:
		print("velocity: ", get_linear_velocity())
		print("inertia: ", get_inertia())


# スワイプ中の処理
func _on_swipe_controller_swiping(vec):
	$Line2D.set_point_position(1, vec)


# 指を話した瞬間の処理
func _on_swipe_controller_swipe(vec):
	#apply_force(vec*100)
	apply_impulse(vec)
