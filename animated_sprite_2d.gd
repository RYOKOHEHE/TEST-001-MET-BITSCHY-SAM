extends CharacterBody2D

const speed = 50
var current_dir = "none"

func _physics_process(delta):
	player_movement(delta)

func player_movement(delta):
	
	if Input.is_action_pressed("ui_right"): 
		play_anim("right")
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		play_anim("left")
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		play_anim("down")
		velocity.y = speed
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		play_anim("up")
		velocity.y = -speed
		velocity.x = 0
	else:
		play_anim("none")
		velocity.x = 0
		velocity.y = 0

	move_and_slide()

func play_anim(dir):
	var anim = $AnimatedSprite2D

	if dir == "right":
		anim.play("walk_right")
	if dir == "left":
		anim.play("walk_left")
	if dir == "up":
		anim.play("walk_up")
	if dir == "down":
		anim.play("walk_down")
	if dir == "none":
		anim.play("walk_no")

