extends KinematicBody

export var SPD = 6
export var ROT = 4
var velocity = Vector3()
onready var mesh = $MeshInstance

func _physics_process(delta):
	var _right = Input.is_action_pressed("ui_right")
	var _left = Input.is_action_pressed("ui_left")
	var _up = Input.is_action_pressed("ui_up")
	var _down = Input.is_action_pressed("ui_down")
	
	if _right and _left:
		velocity.x = 0
	elif _right:
		velocity.x = SPD
		mesh.rotate_z(deg2rad(-ROT))
	elif _left:
		velocity.x = -SPD
		mesh.rotate_z(deg2rad(ROT))
	else:
		velocity.x = lerp(velocity.x, 0, 0.1)
	
	if _up and _down:
		velocity.z = 0
	elif _up:
		velocity.z = -SPD
		mesh.rotate_x(deg2rad(-ROT))
	elif _down:
		velocity.z = SPD
		mesh.rotate_x(deg2rad(ROT))
	else:
		velocity.z = lerp(velocity.z, 0, 0.1)
	
	move_and_slide(velocity)


func _on_enemy_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Scenes/FailMenu.tscn")
		
