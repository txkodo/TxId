
# ID未割当のエンティティにIDを割り当てる
execute if data storage txid {version:"1"} as @e[tag=!txid] run function txid:core/allocate/allocate

# 進捗の処理
execute if data storage txid {version:"1"} as @a run function txid:core/tick.player