extends Area

export var rot = 3
onready var anim = $AnimationPlayer

signal coinCollected

func _ready():
	pass

func _process(delta):
	rotate_y(deg2rad(rot))

func _on_coin_body_entered(body):
	if body.name == "Player":
		anim.play("Bounce")
		$Timer.start()

func _on_Timer_timeout():
	emit_signal("coinCollected")
	queue_free()
