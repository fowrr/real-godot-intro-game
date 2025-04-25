extends TextureRect
var lives = 3 #might have to @onready

# Called when the node enters the scene tree for the first time.
func _ready():
	#lives += 2
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if lives == 2:
		$heart3.set_texture(null)
	elif lives == 1:
		$heart2.set_texture(null)
	elif lives == 0:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().change_scene_to_file("res://endscreen.tscn")
		




		



func _on_goomba_body_entered(body):
	if body.get_name() == "jennifer":
		lives -= 1




func _on_node_3d_3_body_entered(body):
	if body.get_name() == "jennifer":
		lives -=1


func _on_goomba_body_exited(body):
	pass


func _on_thwomp_body_exited(body):
	if body.get_name() == "jennifer":
		lives -= 1


func _on_scene_body_entered(body):
	if body.get_name() == "jennifer":
		lives -= 1


func _on_bowser_lifelost():
	lives -= 1
