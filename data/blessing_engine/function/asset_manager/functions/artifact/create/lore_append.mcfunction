#> blessing_engine:asset_manager/artifact/create/lore_append
#
# Loreを追加する
#
# @input
#   as item
#   storage asset:artifact Lore : TextComponent[]
# @within function
#   blessing_engine:asset_manager/artifact/create/lore_append
#   blessing_engine:asset_manager/artifact/create/set_lore

loot replace block 10000 0 10000 container.0 loot blessing_engine:asset_manager/artifact/get_lore
data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[0]
data remove storage asset:artifact Lore[0]

execute if data storage asset:artifact Lore[0] run function blessing_engine:asset_manager/artifact/create/lore_append
