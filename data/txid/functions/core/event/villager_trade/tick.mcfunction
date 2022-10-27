tag @s remove txid.villager_trade

scoreboard players operation * txid -= @s txid.villager_trade
tag @e[scores={txid=0}] add txid.target
scoreboard players operation * txid += @s txid.villager_trade

function txid:callback/event/villager_trade

tag @e[tag=txid.target] remove txid.target
