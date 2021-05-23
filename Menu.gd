extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("MasaVal").text = str(get_node("MasaSlider").value) + " Kg"
	get_node("FricVal").text = str(get_node("FriccionSlider").value)
	get_node("ThetaVal").text = str(get_node("ThetaSlider").value) + " °"
	pass


func _on_TextureButton_pressed():
	Global.masa = get_node("MasaSlider").value
	Global.friccion = get_node("FriccionSlider").value
	Global.theta = get_node("ThetaSlider").value
	get_tree().change_scene("res://Practica4.tscn")
	pass # Replace with function body.
