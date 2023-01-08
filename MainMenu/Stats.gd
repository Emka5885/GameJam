extends Node2D

var mainMenuScene = load("res://MainMenu/MainMenu.tscn")

onready var select = $AudioStreamPlayer

func _on_Button_button_up():
	select.play()
	yield(select, "finished")
	get_tree().change_scene(mainMenuScene.resource_path)
