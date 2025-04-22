extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass







func _on_cut_time_timeout():
	set_max_lines_visible(0)



func _on_coin_coin_collected():
	set_max_lines_visible(-1)
