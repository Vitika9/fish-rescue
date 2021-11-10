extends TextureRect




func _on_VitikaYTButton_pressed() -> void:
	OS.shell_open("https://www.youtube.com/channel/UCduXwGSz5SLfoD0JqMs6DVA")


func _on_BackButton_pressed() -> void:
	get_tree().change_scene("res://UI/Start.tscn")



func _on_MusicLink_pressed() -> void:
	OS.shell_open("https://youtu.be/la2W_ZiE1es")
