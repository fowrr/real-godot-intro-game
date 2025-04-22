extends Control

var checkmark = preload("res://Bowser/Eo_circle_green_white_checkmark.svg.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_coin_coin_collected():
	$TextureRect.set_texture(checkmark)


func _on_key_open():
	$TextureRect2.set_texture(checkmark)



func _on_mushroom_mushroom_collected():
	$TextureRect3.set_texture(checkmark)
