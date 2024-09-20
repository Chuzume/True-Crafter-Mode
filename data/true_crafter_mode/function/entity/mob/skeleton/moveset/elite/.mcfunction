#> true_crafter_mode:entity/mob/skeleton/moveset/elite/
#
# エリートタイプの動作
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/

# 同Tickの場合、他の場所でThisタグ持ちを指定するとコイツになる
    tag @s add This

# 射撃検知
    execute as @n[type=arrow,tag=!TMCM.Projectile.EliteArrow,distance=..3] on origin if entity @s[tag=This] run function true_crafter_mode:entity/mob/skeleton/moveset/elite/shoot
 
# リセット 
    tag @s remove This