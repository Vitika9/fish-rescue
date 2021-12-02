extends TextureRect

onready var earthSprite=$Earth

func _physics_process(delta: float) -> void:
	earthSprite.rotation_degrees+=.5

func _on_BackButton_pressed() -> void:
	get_tree().change_scene("res://UI/Start.tscn")
