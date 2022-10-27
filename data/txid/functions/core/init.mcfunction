#define storage txid:io
#define storage txid

tag @e remove txid
tag @e remove txid.0f
tag @e remove txid.0t
tag @e remove txid.1f
tag @e remove txid.1t
tag @e remove txid.2f
tag @e remove txid.2t
tag @e remove txid.3f
tag @e remove txid.3t
tag @e remove txid.4f
tag @e remove txid.4t
tag @e remove txid.5f
tag @e remove txid.5t
tag @e remove txid.6f
tag @e remove txid.6t
tag @e remove txid.7f
tag @e remove txid.7t
tag @e remove txid.8f
tag @e remove txid.8t
tag @e remove txid.9f
tag @e remove txid.9t
tag @e remove txid.10f
tag @e remove txid.10t
tag @e remove txid.11f
tag @e remove txid.11t
tag @e remove txid.12f
tag @e remove txid.12t
tag @e remove txid.13f
tag @e remove txid.13t
tag @e remove txid.14f
tag @e remove txid.14t
tag @e remove txid.15f
tag @e remove txid.15t
tag @e remove txid.16f
tag @e remove txid.16t
tag @e remove txid.17f
tag @e remove txid.17t
tag @e remove txid.18f
tag @e remove txid.18t
tag @e remove txid.19f
tag @e remove txid.19t

data modify storage txid version set value "1"

#define tag txid
#define tag txid.target

data modify storage txid id set value [0]

#define objective txid
scoreboard objectives remove txid
scoreboard objectives add txid dummy

#define objective txid
scoreboard objectives add txidCalc dummy


#define tag txid.player_hurt_entity
#define objective txid.player_hurt_entity
scoreboard objectives add txid.player_hurt_entity dummy

#define tag txid.entity_hurt_player
#define objective txid.entity_hurt_player
scoreboard objectives add txid.entity_hurt_player dummy

#define tag txid.entity_killed_player
#define objective txid.entity_killed_player
scoreboard objectives add txid.entity_killed_player dummy

#define tag txid.player_interacted_with_entity
#define objective txid.player_interacted_with_entity
scoreboard objectives add txid.player_interacted_with_entity dummy

#define tag txid.thrown_item_picked_up_by_entity
#define objective txid.thrown_item_picked_up_by_entity
scoreboard objectives add txid.thrown_item_picked_up_by_entity dummy

#define tag txid.villager_trade
#define objective txid.villager_trade
scoreboard objectives add txid.villager_trade dummy

#define tag txid.tame_animal
#define objective txid.tame_animal
scoreboard objectives add txid.tame_animal dummy

#define tag txid.summoned_entity
#define objective txid.summoned_entity
scoreboard objectives add txid.summoned_entity dummy

#define score_holder $x

#define score_holder #2
scoreboard players set #2 txidCalc 2

#define score_holder #2048
scoreboard players set #2048 txidCalc 2048
