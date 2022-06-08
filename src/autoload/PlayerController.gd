extends Node

var inventory: Array = []


func _ready() -> void:
    yield(NodeController, "ready")

    for item in NodeController.get("Items").get_children():
        item.connect("picked_up", self, "_on_item_picked_up")


func _on_item_picked_up(item: Item) -> void:
    inventory.append(item.name)
    item.queue_free()
