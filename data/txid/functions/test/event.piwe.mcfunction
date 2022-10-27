

execute unless entity @e[tag=txid.target] run say non-target

effect give @e[tag=txid.target] glowing 1 1 true

say player_interacted_with_entity
execute if entity @s[advancements={txid:callback/player_interacted_with_entity={villager=true}}] run say villager
execute if entity @s[advancements={txid:callback/player_interacted_with_entity={villager=false}}] run say non-villager