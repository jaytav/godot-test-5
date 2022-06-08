class_name Item
extends Node2D

signal picked_up(item)

onready var tool_button: ToolButton = $ToolButton


func _ready() -> void:
    tool_button.connect("button_down", self, "_on_tool_button_button_down")


func pick_up() -> void:
    emit_signal("picked_up", self)


func _on_tool_button_button_down() -> void:
    pick_up()
