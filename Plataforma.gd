extends KinematicBody2D

func _ready():
	rotation_degrees = Global.theta


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.
