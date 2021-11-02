extends Node2D



func _on_Reload_Game_pressed():
	get_tree().change_scene("res://Scenes/Level one.tscn")


func _on_Menu_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
