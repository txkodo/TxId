tag @s remove txid.player_interacted_with_entity

scoreboard players operation * txid -= @s txid.player_interacted_with_entity
tag @e[scores={txid=0}] add txid.target
scoreboard players operation * txid += @s txid.player_interacted_with_entity

function txid:callback/event/player_interacted_with_entity

tag @e[tag=txid.target] remove txid.target
