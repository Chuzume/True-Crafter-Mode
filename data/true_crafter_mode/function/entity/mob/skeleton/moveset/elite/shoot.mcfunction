#> true_crafter_mode:entity/mob/skeleton/moveset/elite/shoot
#
# 射撃時に実行
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/


# 矢を召喚
    execute summon arrow run function true_crafter_mode:entity/projectile/elite_arrow/init

# 演出
    playsound minecraft:entity.skeleton.shoot hostile @a ~ ~ ~ 1.5 1

# メイン動作
    #data modify entity @s Air set value 301s
    #data modify entity @s Motion[1] set value 0.0d