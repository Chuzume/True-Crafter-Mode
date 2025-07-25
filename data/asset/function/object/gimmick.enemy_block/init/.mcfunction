#> asset:object/gimmick.enemy_block/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# ブロック設置
    execute if biome ~ ~ ~ desert run function asset:object/gimmick.enemy_block/init/block/desert
    execute if biome ~ ~ ~ crimson_forest run function asset:object/gimmick.enemy_block/init/block/crimson_forest
    execute if biome ~ ~ ~ warped_forest run function asset:object/gimmick.enemy_block/init/block/warped_forest
    execute if biome ~ ~ ~ nether_wastes run function asset:object/gimmick.enemy_block/init/block/nether_wastes
    execute if biome ~ ~ ~ soul_sand_valley run function asset:object/gimmick.enemy_block/init/block/soul_sand_valley
    execute if biome ~ ~ ~ basalt_deltas run function asset:object/gimmick.enemy_block/init/block/basalt_deltas

# 全く成功してない、つまりリストにないバイオームだった場合は共通のブロックを設置
    execute unless entity @s[tag=gimmick.enemy_block.Success] run function asset:object/gimmick.enemy_block/init/block/generic

# リセット
    tag @s remove gimmick.enemy_block.Success
