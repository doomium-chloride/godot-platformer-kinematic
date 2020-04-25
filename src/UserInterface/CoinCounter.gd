extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var animation_player = $AnimationPlayer
var global
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(count)
	global = get_node("/root/Game/Global")
	if not global.is_connected("coinCollected",self,"collectCoin"):
		global.connect("coinCollected",self,"collectCoin")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func collectCoin():
	count = count + 1
	text = str(count)
