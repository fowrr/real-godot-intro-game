extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_time_label_thwomp():
	visible = true
	$"thwomp-up-n-down".play("thwomp going up and down")
