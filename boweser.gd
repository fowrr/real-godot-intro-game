extends StaticBody3D
var truefalse = false
var mush = false
signal lifelost
# Called when the node enters the scene tree for the first time.
func _ready():
	print(scale)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if truefalse == true:
		scale.x -= 0.01
		scale.z -= 0.01
		scale.y -= 0.01
	if scale.x <= 0.25:
		queue_free()
		get_tree().change_scene_to_file("res://win.tscn")



func _on_area_3d_body_entered(body):
	if body.get_name() == "jennifer" and mush == true:
		truefalse = true
	elif body.get_name() == "jennifer" and mush == false:
		truefalse = false
		emit_signal("lifelost")
func _on_area_3d_body_exited(body):
	if body.get_name() == "jennifer":
		truefalse = false


func _on_mushroom_mushroom_collected():
	mush = true
