extends Node

var nodes: Dictionary = {}
var initial_nodes: Array = [
    "World",
    "World/Items"
]


func _ready() -> void:
    var main: Node = get_tree().root.get_node("Main")

    for initial_node in initial_nodes:
        var node: Node = main.get_node(initial_node)
        nodes[node.name] = node


func get(node_name: String) -> Node:
    return nodes[node_name]
