extends KinematicBody

const SPD = 6
const ROT = 4

func _physics_process(delta):
	var _right = Input.is_action_pressed("ui_right")
	var _left = Input.is_action_pressed("ui_left")
	var _up = Input.is_action_pressed("ui_up")
	var _down = Input.is_action_pressed("ui_down")
	