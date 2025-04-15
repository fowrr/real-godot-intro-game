extends TextureRect
var lives = 3 #might have to @onready

# Called when the node enters the scene tree for the first time.
func _ready():
	print(lives)
	lives += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if lives == 2:
		$heart3.set_texture(null)
	elif lives == 1:
		$heart2.set_texture(null)
	elif lives == 0:
		get_tree().change_scene_to_file("res://endscreen.tscn")
		




		
func _on_goomba_body_entered(body):
	lives -= 1
	print(lives)
