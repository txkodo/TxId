tag @s remove txid.player_hurt_entity

scoreboard players operation * txid -= @s txid.player_hurt_entity
tag @e[scores={txid=0}] add txid.target
scoreboard players operation * txid += @s txid.player_hurt_entity

function txid:callback/event/player_hurt_entity

tag @e[tag=txid.target] remove txid.target
