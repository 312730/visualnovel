extends Node2D

#variables 
#scriptpath will be the one to decide which scene will be loaded
onready var scriptpath = load("res://scripts/0.gd")
var dindex = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$background.texture = load(scriptpath.bg)

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		$character.texture = load(scriptpath.dialogues[dindex]["sprite"])
		$nametag.text = scriptpath.dialogues[dindex]["name"]
		$dialogue.text = scriptpath.dialogues[dindex]["dialogue"]
		dindex += 1
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
