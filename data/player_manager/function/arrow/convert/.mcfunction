#> player_manager:arrow/convert/
#
# 
#
# @within function core:handler/use_bow

# 自身のデータを取得してストレージへ
    data modify storage asset:temp ItemData set from entity @s item.components."minecraft:custom_data"

# 取得データに"FullConvert"が含まれていたらこっち
    execute if data storage asset:temp ItemData.FullConvert run function player_manager:arrow/convert/full.m with storage asset:temp ItemData
# 含まれてないならこっち
    execute unless data storage asset:temp ItemData.FullConvert run function player_manager:arrow/convert/m with storage asset:temp ItemData

# リセット
    data remove storage asset:temp ItemData
