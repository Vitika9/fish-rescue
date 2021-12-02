extends TextureRect

func _ready() -> void:
	$HighScoreLabel.text+=" "+str(Main.high_score)

func _on_StartButton_pressed() -> void:
	get_tree().change_scene("res://World/World.tscn")

func _on_AboutButton_pressed() -> void:
	get_tree().change_scene("res://UI/About.tscn")

func _on_TutButton_pressed() -> void:
	get_tree().change_scene("res://UI/Instructions.tscn")

func _on_StoryButton_pressed() -> void:
	get_tree().change_scene("res://UI/Stroy.tscn")
