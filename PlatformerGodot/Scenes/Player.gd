extends KinematicBody2D

const GRAVITY = 35
var velocity = Vector2(0,0)
export var speed = 100
export var jump =-900

func _physics_process(delta):
	if Input.is_action_pressed("right"): 
		velocity.x = speed
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = false

	elif Input.is_action_pressed("left"):
		velocity.x = -speed
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = true
	else: velocity.x= 0
	$AnimatedSprite.play("idle")
	
	if Input.is_action_just_pressed ("jump") and is_on_floor():
		velocity.y += jump
		
		
	if not is_on_floor():
		$AnimatedSprite.play("air")
		#get_node(AnimatedSprite)
		velocity.y += GRAVITY
		
	print(velocity)
	velocity =move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 0.1)
	




func _on_Area2D_body_entered(body): 
	get_tree().change_scene("res://Scenes/Level one.tscn")
	pass # Replace with function body.
