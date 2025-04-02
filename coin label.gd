extends Label

var coinCount = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_coin_coin_collected():
	coinCount += 1
	text = "Coins = " + str(coinCount)
	print("Collected")
	
