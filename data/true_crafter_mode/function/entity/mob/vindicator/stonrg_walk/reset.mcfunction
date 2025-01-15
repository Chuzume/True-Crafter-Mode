#> true_crafter_mode:entity/mob/vindicator/stonrg_walk/reset
#
# 効果時間切れ
#
# @within function 
#   true_crafter_mode:entity/mob/vindicator/moveset
#   true_crafter_mode:entity/mob/vindicator/tick

# 演出
    playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 2

# 能力値を戻す
    attribute @s generic.knockback_resistance base set 0
    attribute @s minecraft:movement_speed base set 0.4

# スコアリセット
    scoreboard players reset @s TMCM.Tick
