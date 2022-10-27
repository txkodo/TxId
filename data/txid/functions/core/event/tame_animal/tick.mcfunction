tag @s remove txid.tame_animal

scoreboard players operation * txid -= @s txid.tame_animal
tag @e[scores={txid=0}] add txid.target
scoreboard players operation * txid += @s txid.tame_animal

function txid:callback/event/tame_animal

tag @e[tag=txid.target] remove txid.target
