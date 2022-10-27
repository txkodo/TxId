tag @s remove txid.entity_hurt_player

scoreboard players operation * txid -= @s txid.entity_hurt_player
tag @e[scores={txid=0}] add txid.target
scoreboard players operation * txid += @s txid.entity_hurt_player

function txid:callback/event/entity_hurt_player

tag @e[tag=txid.target] remove txid.target
