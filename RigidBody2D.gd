extends KinematicBody2D


var gravity = 100
var friccionvalue = Global.friccion
var masavalue = Global.masa
var velocity = Vector2(0,0)
var peso = masavalue * gravity
var normal = peso * cos(Global.theta) * friccionvalue
var aceleracion = gravity * (sin(deg2rad(Global.theta)) - cos(deg2rad(Global.theta))*friccionvalue)

func _ready():
	if masavalue == 0:
		masavalue = 1
	print(sin(rad2deg(Global.theta)))
	pass
	
func _physics_process(delta):
	velocity = move_and_slide(velocity)
	if is_on_ceiling() or is_on_ceiling() or is_on_wall():
		velocity.x += aceleracion * delta
		get_parent().get_node("VelXVal").text = str(velocity.x) + " pixeles/segundo"
	velocity.y += gravity * delta
	
	pass
