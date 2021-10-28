extends Area2D


signal coin_collected

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "bounce":
		queue_free()


func _on_Collectable_body_entered(body):
	Global.score = Global.score + 20
	emit_signal ("coin_collected")
	queue_free()




	
	print(Global.score)
	
	
	

	set_collision_layer_bit(3, false)
	set_collision_mask_bit(0, false)
