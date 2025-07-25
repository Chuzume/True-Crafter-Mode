#> asset:object/system.ominous_bonfire/tick/kill
#
# 
#
# @within function asset:object/system.ominous_bonfire/tick/

# 焚き火が残ってるようなら破壊する
    execute if block ~ ~ ~ campfire run setblock ~ ~ ~ air destroy

# アイテムをキル
    kill @n[type=item,nbt={Item:{id:"minecraft:charcoal",count:2},Age:0s},distance=..1] 
    kill @n[type=item,nbt={Item:{id:"minecraft:campfire",count:1},Age:0s},distance=..1] 

# サウンド
    playsound minecraft:entity.allay.item_taken block @a ~ ~ ~ 1 0

# アイテムドロップ
    loot spawn ~ ~ ~ loot asset:item/ominous_campire

# 自壊
    kill @s
