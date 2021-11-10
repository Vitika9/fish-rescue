extends KinematicBody2D

var dir=1
var speed=1
onready var dirChangeSoundEffect=$DirChangeSoundEffect
onready var world=get_node("../")

func _ready() -> void:
	$Music.playing=true
	
func _physics_process(delta: float) -> void:
	rotation_degrees+=dir*speed
	position.x=360+260*cos(rotation_degrees*3.1415/180)
	position.y=360+260*sin(rotation_degrees*3.1415/180)
	if(Input.is_action_just_pressed("change_dir")):
		dir*=-1
		dirChangeSoundEffect.playing=true

func increase_score():
	world.score+=1

func _on_Timer_timeout() -> void:
	speed+=.03

func _on_DirChangeSoundEffect_finished() -> void:
	dirChangeSoundEffect.playing=false

