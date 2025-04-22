extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_barricade_body_entered(body):
	if body.get_name() == "jennifer":
		set_max_lines_visible(-1)



func _on_barricade_body_exited(body):
	
	set_max_lines_visible(0)
