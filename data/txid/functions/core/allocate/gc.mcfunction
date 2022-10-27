### Copyright © 2022 txkodo
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### ガベージコレクタ

# 前回存在を確認したIDを移動させる
data modify storage txid id append from storage txid id[0]
data remove storage txid id[0]

# 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
execute store result score $x txidCalc run data get storage txid id[0]
scoreboard players remove $x txidCalc 2147483647
scoreboard players set $x txid 0
scoreboard players operation * txid -= $x txidCalc
scoreboard players operation $x txid > * txid
scoreboard players operation * txid += $x txidCalc

# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
scoreboard players operation $x txidCalc >< $x txid
execute store result score $x txid run data get storage txid id[0]
execute if score $x txid > $x txidCalc run function txid:core/allocate/gc_loop
scoreboard players operation $x txidCalc >< $x txid

# loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
# 2prev
execute store result score $x txidCalc run data get storage txid id[-1]
execute if score $x txidCalc matches 0 run scoreboard players add $x txidCalc 1048576
execute if score $x txid matches 0 run scoreboard players add $x txidCalc 1048576
execute if score $x txid matches 0 run scoreboard players add $x txid 1048576
scoreboard players operation $x txidCalc += $x txidCalc

# 2prev - 2x
scoreboard players operation $x txidCalc -= $x txid
scoreboard players operation $x txidCalc -= $x txid
# 3x - 2prev
scoreboard players operation $x txid -= $x txidCalc
# 3x - 2prev - next
execute store result score $x txidCalc run data get storage txid id[1]
scoreboard players operation $x txid -= $x txidCalc
execute if score $x txid matches -1.. run function txid:core/allocate/gc
