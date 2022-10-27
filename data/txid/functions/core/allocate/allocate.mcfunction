### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを新規割り当て

# ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
function txid:core/allocate/gc

# id[0] + id[-1] / 2 を割り当てIDに取る
execute store result score $x txid run data get storage txid id[-1]
execute store result score $x txidCalc run data get storage txid id[0]
execute if score $x txid matches 0 run scoreboard players set $x txid 1048576
scoreboard players operation $x txid += $x txidCalc
scoreboard players operation $x txid /= #2 txidCalc

# 割り当てIDに追加
data modify storage txid id append value -1
execute store result storage txid id[-1] int 1 run scoreboard players get $x txid

# 割り当てる
scoreboard players operation @s txid = $x txid

# タグの付与
tag @s add txid

# 二分探索タグの付与
scoreboard players operation $x txid *= #2048 txidCalc

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.19f
execute if score $x txid matches ..-1 run tag @s add txid.19t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.18f
execute if score $x txid matches ..-1 run tag @s add txid.18t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.17f
execute if score $x txid matches ..-1 run tag @s add txid.17t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.16f
execute if score $x txid matches ..-1 run tag @s add txid.16t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.15f
execute if score $x txid matches ..-1 run tag @s add txid.15t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.14f
execute if score $x txid matches ..-1 run tag @s add txid.14t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.13f
execute if score $x txid matches ..-1 run tag @s add txid.13t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.12f
execute if score $x txid matches ..-1 run tag @s add txid.12t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.11f
execute if score $x txid matches ..-1 run tag @s add txid.11t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.10f
execute if score $x txid matches ..-1 run tag @s add txid.10t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.9f
execute if score $x txid matches ..-1 run tag @s add txid.9t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.8f
execute if score $x txid matches ..-1 run tag @s add txid.8t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.7f
execute if score $x txid matches ..-1 run tag @s add txid.7t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.6f
execute if score $x txid matches ..-1 run tag @s add txid.6t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.5f
execute if score $x txid matches ..-1 run tag @s add txid.5t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.4f
execute if score $x txid matches ..-1 run tag @s add txid.4t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.3f
execute if score $x txid matches ..-1 run tag @s add txid.3t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.2f
execute if score $x txid matches ..-1 run tag @s add txid.2t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.1f
execute if score $x txid matches ..-1 run tag @s add txid.1t

scoreboard players operation $x txid += $x txid
execute if score $x txid matches 0.. run tag @s add txid.0f
execute if score $x txid matches ..-1 run tag @s add txid.0t
