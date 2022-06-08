extends Node2D

onready var tool_button: ToolButton = $ToolButton


func _ready() -> void:
    tool_button.connect("button_down", self, "_on_tool_button_button_down")


func pick_up() -> void:
    queue_free()


func _on_tool_button_button_down() -> void:
    pick_up()
