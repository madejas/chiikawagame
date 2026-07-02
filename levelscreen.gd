extends Node2D

@onready var biru_container: HBoxContainer = $bg/birucontainer
@onready var biru: TextureRect = $bg/birucontainer/biru
@onready var biru_2: TextureRect = $bg/birucontainer/biru2
@onready var biru_3: TextureRect = $bg/birucontainer/biru3
@onready var biru_4: TextureRect = $bg/birucontainer/biru4
@onready var biru_5: TextureRect = $bg/birucontainer/biru5
@onready var level: RichTextLabel = $level
@onready var timer: RichTextLabel = $timer

var time

func _ready() -> void:
	await Timer(5.0)
	if Global.minigames_done < 3: # if you havent completed 3 minigames yet 
		Global.minigames_done = Global.minigames_done +1
		get_tree().change_scene_to_file("res://scenes/minigame_" + str(Global.minigames_done) + ".tscn")
		
