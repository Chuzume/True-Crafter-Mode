#> true_crafter_mode:entity/mob/skeleton/moveset/elite/
#
# エリートタイプの動作
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/

# 射撃検知
    tag @s add This
    execute as @n[type=arrow,tag=!TMCM.AlreadyInit] on origin if entity @s[tag=This] run function true_crafter_mode:entity/mob/skeleton/moveset/elite/shoot
    tag @s remove This
