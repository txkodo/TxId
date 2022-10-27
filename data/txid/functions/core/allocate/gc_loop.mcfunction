### Copyright © 2022 txkodo
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 割り当て解放

# 割り当て済みIDを削除
data remove storage txid id[0]
# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
execute store result score $x txid run data get storage txid id[0]
execute if score $x txid > $x txidCalc run function txid:core/allocate/gc_loop
