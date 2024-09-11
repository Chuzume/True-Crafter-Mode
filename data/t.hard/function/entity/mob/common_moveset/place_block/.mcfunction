
# ブロックを置く

# 内部にマーカー仕込む
    execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["TrueCrafterMode.Entity.EnemyBlock"]}

# ブロック設置
    execute if biome ~ ~ ~ desert run function t.hard:entity/mob/common_moveset/place_block/desert
    execute if biome ~ ~ ~ crimson_forest run function t.hard:entity/mob/common_moveset/place_block/crimson_forest
    execute if biome ~ ~ ~ warped_forest run function t.hard:entity/mob/common_moveset/place_block/warped_forest
    execute if biome ~ ~ ~ nether_wastes run function t.hard:entity/mob/common_moveset/place_block/nether_wastes
    execute if biome ~ ~ ~ soul_sand_valley run function t.hard:entity/mob/common_moveset/place_block/soul_sand_valley
    execute if biome ~ ~ ~ basalt_deltas run function t.hard:entity/mob/common_moveset/place_block/basalt_deltas

# 全く成功してない、つまりリストにないバイオームだった場合は共通のブロックを設置
    execute unless entity @s[tag=TrueCrafterMode.Success] run function t.hard:entity/mob/common_moveset/place_block/generic

# リセット
    tag @s remove TrueCrafterMode.Success
    