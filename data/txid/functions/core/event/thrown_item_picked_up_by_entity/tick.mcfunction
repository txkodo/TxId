tag @s remove txid.thrown_item_picked_up_by_entity

scoreboard players operation * txid -= @s txid.thrown_item_picked_up_by_entity
tag @e[scores={txid=0}] add txid.target
scoreboard players operation * txid += @s txid.thrown_item_picked_up_by_entity

function txid:callback/event/thrown_item_picked_up_by_entity

tag @e[tag=txid.target] remove txid.target
