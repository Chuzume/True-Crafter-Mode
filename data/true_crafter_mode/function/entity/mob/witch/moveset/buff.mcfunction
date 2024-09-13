#> true_crafter_mode:entity/mob/witch/moveset/buff
#
# バフを与え、デバフ耐性も与える
#
# @within function true_crafter_mode:entity/mob/witch/moveset/main

# バフ
    effect give @s fire_resistance 1 0
    effect give @s resistance 1 0
    effect give @s speed 1 0

# デバフ無効化
    effect clear @s poison
    effect clear @s slowness
    effect clear @s weakness
    effect clear @s wither

# 演出
    particle minecraft:trial_spawner_detection ~ ~1 ~ 0.3 0.5 0.3 0 1
    particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0 1