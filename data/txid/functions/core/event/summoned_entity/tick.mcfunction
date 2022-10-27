tag @s remove txid.summoned_entity

scoreboard players operation * txid -= @s txid.summoned_entity
tag @e[scores={txid=0}] add txid.target
scoreboard players operation * txid += @s txid.summoned_entity

function txid:callback/event/summoned_entity

tag @e[tag=txid.target] remove txid.target
