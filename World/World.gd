extends Node2D

var score=0 setget set_score
onready var earth=$Earth
onready var ufo=$UFO
onready var label=$Label

func _ready() -> void:
	$AnimationPlayer.play("Animate")
	
func set_score(value):
	score=value
	label.text=str(score)
	

func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	if(anim_name=="End"):
		get_tree().change_scene("res://UI/Retry.tscn")
