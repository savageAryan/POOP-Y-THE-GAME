extends Control
@onready var button_2: Button = $Button2
@onready var button_3: Button = $Button3
@onready var button_4: Button = $Button4
@onready var button_5: Button = $Button5
@onready var button_6: Button = $Button6
@onready var button_7: Button = $Button7
@onready var button_8: Button = $Button8
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

var fart = [
	preload("res://assets/apebble-fart-4-228244 (1).mp3"),
	preload("res://assets/apebble-fart-4-228244.mp3"),
	preload("res://assets/apebble-fart-5-228245 (1).mp3"),
	preload("res://assets/apebble-fart-5-228245.mp3"),
	preload("res://assets/freesound_community-fart-83471.mp3"),
	preload("res://assets/freesound_community-fart-91011.mp3"),
	preload("res://assets/freesound_community-fart-noises-83359.mp3"),
	preload("res://assets/freesound_community-fart-with-reverb-39675.mp3"),
	preload("res://assets/freesound_community-fartbumtrumpetpoop-99028.mp3"),
	preload("res://assets/freesound_community-poop-plop-47600.mp3"),
	
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")



func randomfart():
	audio_stream_player.stream = fart.pick_random()
	audio_stream_player.play()

func _on_button_8_pressed() -> void:
	randomfart()


func _on_button_7_pressed() -> void:
	randomfart()


func _on_button_6_pressed() -> void:
	randomfart()


func _on_button_5_pressed() -> void:
	randomfart()


func _on_button_4_pressed() -> void:
	randomfart()

func _on_button_3_pressed() -> void:
	randomfart()


func _on_button_2_pressed() -> void:
	randomfart()
