execute as @e[tag=!txid,distance=..10,limit=1,sort=nearest] run function txid:core/event/summoned_entity/on.as

scoreboard players operation @s txid.summoned_entity = $id txidCalc
tag @s add txid.summoned_entity
advancement revoke @s only txid:core/summoned_entity

# 最寄りの未登録エンティティを召喚した対象だと断定しているので不正確な処理