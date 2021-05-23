extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var gravedad = 1200
var Velocidad = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	Velocidad.x = 0
	Velocidad.y = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _fixed_process(delta):
	Velocidad.y += gravedad * delta
	var _movimiento = Velocidad * delta
	pass
