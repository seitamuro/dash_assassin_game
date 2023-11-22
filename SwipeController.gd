extends Node2D
## SwipeDetector
## スワイプを検出し，移動幅をswipeシグナルから出力します

## 指が離れたが検出されたときに移動幅を出力する
signal swipe(vec)
## 指が押し付けられている間，移動幅を出力する
signal swiping(vec)

var swipe_start = null

func _input(event):
	if event.is_action_pressed("click"):
		swipe_start = get_global_mouse_position()
	if event.is_action_released("click"):
		_calculate_swipe(get_global_mouse_position())

func _calculate_swipe(swipe_end):
	if swipe_start == null:
		return

	var diff = swipe_end - swipe_start
	emit_signal("swipe", diff)

	# Debug log
	if get_node("/root/Global").DEBUG_SHOW_SWIPE_LOG:
		print(diff)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		emit_signal("swiping", get_global_mouse_position() - swipe_start)

		# Debug log
		if get_node("/root/Global").DEBUG_SHOW_SWIPE_LOG:
			print(get_global_mouse_position() - swipe_start)