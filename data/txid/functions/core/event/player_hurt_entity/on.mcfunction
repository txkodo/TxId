execute store success storage txid bits.19 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={19t=true}}]
execute store success storage txid bits.18 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={18t=true}}]
execute store success storage txid bits.17 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={17t=true}}]
execute store success storage txid bits.16 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={16t=true}}]
execute store success storage txid bits.15 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={15t=true}}]
execute store success storage txid bits.14 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={14t=true}}]
execute store success storage txid bits.13 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={13t=true}}]
execute store success storage txid bits.12 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={12t=true}}]
execute store success storage txid bits.11 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={11t=true}}]
execute store success storage txid bits.10 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={10t=true}}]
execute store success storage txid bits.9 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={9t=true}}]
execute store success storage txid bits.8 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={8t=true}}]
execute store success storage txid bits.7 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={7t=true}}]
execute store success storage txid bits.6 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={6t=true}}]
execute store success storage txid bits.5 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={5t=true}}]
execute store success storage txid bits.4 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={4t=true}}]
execute store success storage txid bits.3 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={3t=true}}]
execute store success storage txid bits.2 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={2t=true}}]
execute store success storage txid bits.1 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={1t=true}}]
execute store success storage txid bits.0 byte 1 if entity @s[advancements={txid:core/player_hurt_entity={0t=true}}]
execute as @e[type=!player,distance=..150] run function txid:core/search/19

scoreboard players operation @s txid.player_hurt_entity = $id txidCalc
tag @s add txid.player_hurt_entity

advancement revoke @s only txid:core/player_hurt_entity
