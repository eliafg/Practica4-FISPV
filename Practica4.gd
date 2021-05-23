extends Node2D

export (int) var run_speed = 100
export (int) var jump_speed = -400
export (int) var gravity = 1200
export (float) var rotation_speed = 1.5

export  (float) var rotation_dir = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	var rotation_dir = 0
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	if Input.is_action_pressed("right"):
		rotation_dir += 1
	if Input.is_action_pressed("left"):
		rotation_dir -= 1

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta):
	get_input()
	get_node("Plataforma").transform.rotation_degrees = rotation_dir
