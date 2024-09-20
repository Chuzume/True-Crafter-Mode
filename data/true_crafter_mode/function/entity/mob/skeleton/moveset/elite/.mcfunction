#> true_crafter_mode:entity/mob/skeleton/moveset/elite/
#
# エリートタイプの動作
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/

# 同Tickの場合、他の場所でThisタグ持ちを指定するとコイツになる
    tag @s add This

# 射撃検知
    execute as @n[type=arrow,tag=!TMCM.Projectile.EliteArrow,distance=..3] on origin if entity @s[tag=This] anchored eyes positioned ^ ^ ^ run function true_crafter_mode:entity/mob/skeleton/moveset/elite/shoot
 
# クールタイムに入ってたらスコアを減らす
    scoreboard players remove @s[scores={TMCM.Cooltime=0..}] TMCM.Cooltime 1
    scoreboard players reset @s[scores={TMCM.Cooltime=..0}] TMCM.Cooltime

# リセット 
    tag @s remove This