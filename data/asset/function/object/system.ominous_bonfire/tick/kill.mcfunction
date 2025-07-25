#> asset:object/system.ominous_bonfire/tick/kill
#
# 
#
# @within function asset:object/system.ominous_bonfire/tick/

# アイテムをキル
    kill @n[type=item,nbt={Item:{id:"minecraft:charcoal",count:2},Age:1s},distance=..0.5] 
    kill @n[type=item,nbt={Item:{id:"minecraft:campfire",count:1},Age:1s},distance=..0.5] 

# 自壊
    kill @s
