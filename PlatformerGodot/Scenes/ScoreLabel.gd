extends Label



var my_string = "whatever I wanted to say about my score"

func _on_Collectable_coin_collected():
	pass # Replace with function body.



	text = String(Global.score) + my_string
