extends Node2D

#variables 
#scriptpath will be the one to decide which scene will be loaded
onready var scriptpath = load("res://scripts/0.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	$background.texture = load(scriptpath.bg)
	for dindex in range(scriptpath.final):
		if Input.is_action_just_pressed("ui_accept"):
			$character.texture = load(scriptpath.dialogues[dindex]["sprite"])
			$nametag.text = scriptpath.dialogues[dindex]["name"]
			$dialogue.text = scriptpath.dialogues[dindex]["dialogue"]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
