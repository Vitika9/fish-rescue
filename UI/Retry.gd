extends TextureRect

func _ready() -> void:
	$CurrentScoreLabel.text+=" "+str(Main.current_score)
	$HighScoreLabel.text+=" "+str(Main.high_score)



func _on_RetryButton_pressed() -> void:
	get_tree().change_scene("res://World/World.tscn")




func _on_MenuButton_pressed() -> void:
	get_tree().change_scene("res://UI/Start.tscn")
