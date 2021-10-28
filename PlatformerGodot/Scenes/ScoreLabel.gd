extends Label


var my_string1 = "Energy: "
var my_string2 = "%"

func _ready():
	text = my_string1 + String(Global.score) + my_string2
	
func _on_Collectable_coin_collected():
	


	text = my_string1 + String(Global.score) + my_string2
