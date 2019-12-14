extends KinematicBody

const SPD = 6
const ROT = 4
var velocity = Vector3()

func _physics_process(delta):
	var _right = Input.is_action_pressed("ui_right")
	var _left = Input.is_action_pressed("ui_left")
	var _up = Input.is_action_pressed("ui_up")
	var _down = Input.is_action_pressed("ui_down")
	
	if _right and _left:
		velocity.x = 0
	elif _right:
		velocity.x = SPD
	elif _left:
		velocity.x = -SPD
	else:
		velocity.x = lerp(velocity.x, 0, 0.1)
	
	if _up and _down:
		velocity.z = 0
	elif _up:
		velocity.z = -SPD
	elif _down:
		velocity.z = SPD
	else:
		velocity.z = lerp(velocity.z, 0, 0.1)
	
	move_and_slide(velocity)