extends Sprite

var min_add_time=3
var max_add_time=5
onready var timer=$Timer

func _ready() -> void:
	randomize()
	timer.wait_time=int(rand_range(min_add_time,max_add_time))

func _physics_process(delta: float) -> void:
	rotation_degrees+=.5

func _on_Timer_timeout() -> void:
	var RedLight=load("res://World/RedLight.tscn")
	var redLight=RedLight.instance()
	redLight.rotation=int( rand_range(0,360))
	add_child(redLight)
	
