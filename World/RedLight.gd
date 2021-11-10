extends Sprite

onready var world=get_node("../../")
func _ready() -> void:
	$AnimationPlayer.play("Blink")
	$Timer.wait_time=int(rand_range(2,6))

func _on_Timer_timeout() -> void:
	$AnimationPlayer.play("Off")


func _on_Area2D_body_entered(body: Node) -> void:
	body.get_node("AnimationPlayer").play("Die")
	if(world.score>Main.high_score):
		Main.save_data(world.score)
	Main.current_score=world.score
	world.get_node("AnimationPlayer").play("End")

