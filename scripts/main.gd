extends Node2D

func newgame():
	$Player.position = $PlayerSpawnPosition.position

# Called when the node enters the scene tree for the first time.
func _ready():
	newgame()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
