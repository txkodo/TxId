tag @s remove txid.entity_killed_player

scoreboard players operation * txid -= @s txid.entity_killed_player
tag @e[scores={txid=0}] add txid.target
scoreboard players operation * txid += @s txid.entity_killed_player

function txid:callback/event/entity_killed_player

tag @e[tag=txid.target] remove txid.target
