
# ブロックを置く

# 内部にマーカー仕込む
    execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["TMCM.Entity.EnemyBlock"]}

# ブロック設置
    execute if biome ~ ~ ~ desert run function true_crafter_mode:entity/mob/common_moveset/place_block/biome/desert
    execute if biome ~ ~ ~ crimson_forest run function true_crafter_mode:entity/mob/common_moveset/place_block/biome/crimson_forest
    execute if biome ~ ~ ~ warped_forest run function true_crafter_mode:entity/mob/common_moveset/place_block/biome/warped_forest
    execute if biome ~ ~ ~ nether_wastes run function true_crafter_mode:entity/mob/common_moveset/place_block/biome/nether_wastes
    execute if biome ~ ~ ~ soul_sand_valley run function true_crafter_mode:entity/mob/common_moveset/place_block/biome/soul_sand_valley
    execute if biome ~ ~ ~ basalt_deltas run function true_crafter_mode:entity/mob/common_moveset/place_block/biome/basalt_deltas

# 全く成功してない、つまりリストにないバイオームだった場合は共通のブロックを設置
    execute unless entity @s[tag=TMCM.Success] run function true_crafter_mode:entity/mob/common_moveset/place_block/biome/generic

# リセット
    tag @s remove TMCM.Success