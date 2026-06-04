extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
@onready var audio_stream_player_2: AudioStreamPlayer = $AudioStreamPlayer2

func _on_button_pressed() -> void:
	audio_stream_player.play()
	await get_tree().create_timer(2).timeout
	
	get_tree().change_scene_to_file("res://control.tscn")
	

func _on_button_2_pressed() -> void:
	get_tree().quit()


func _on_button_3_pressed() -> void:
	audio_stream_player_2.play()
	await audio_stream_player_2.finished
	get_tree().change_scene_to_file("res://scenes/aboutscreen.tscn")
