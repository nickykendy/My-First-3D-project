extends Button

func _ready():
	pass


func _on_ButtonRestart_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
