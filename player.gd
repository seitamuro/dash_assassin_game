extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


# スワイプ中の処理
func _on_swipe_controller_swiping(vec):
	$Line2D.set_point_position(1, vec)
