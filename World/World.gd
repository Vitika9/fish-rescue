extends Node2D

onready var earth=$Earth
onready var ufo=$UFO
onready var label=$Label
var score=0 setget set_score

func _ready() -> void:
	$AnimationPlayer.play("Animate")
	
func set_score(value):
	score=value
	label.text=str(score)
	
func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	if(anim_name=="End"):
		get_tree().change_scene("res://UI/Retry.tscn")
