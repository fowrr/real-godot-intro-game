extends Label
signal thwomp
var timeLeft = 180

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_timer_timeout():
	timeLeft -= 1
	text = "Time = " + str(timeLeft)
	if timeLeft == 150:
		emit_signal("thwomp")
	elif timeLeft == 0:
		$Timer.stop()
		get_tree().change_scene_to_file("res://endscreen.tscn")
