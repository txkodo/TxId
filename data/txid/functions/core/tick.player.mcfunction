execute if entity @s[tag=txid.entity_hurt_player] run function txid:core/event/entity_hurt_player/tick
execute if entity @s[tag=txid.entity_killed_player] run function txid:core/event/entity_killed_player/tick
execute if entity @s[tag=txid.player_hurt_entity] run function txid:core/event/player_hurt_entity/tick
execute if entity @s[tag=txid.player_interacted_with_entity] run function txid:core/event/player_interacted_with_entity/tick
execute if entity @s[tag=txid.thrown_item_picked_up_by_entity] run function txid:core/event/thrown_item_picked_up_by_entity/tick
execute if entity @s[tag=txid.villager_trade] run function txid:core/event/villager_trade/tick
execute if entity @s[tag=txid.tame_animal] run function txid:core/event/tame_animal/tick
execute if entity @s[tag=txid.summoned_entity] run function txid:core/event/summoned_entity/tick
