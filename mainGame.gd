extends Node2D

func _on_story_button_pressed() -> void:
	#get_tree().change_scene_to_file("res://inkTutorial.tscn")
	get_node("DialogueManager").restartStory();
	pass # Replace with function body.
