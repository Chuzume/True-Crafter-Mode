#> true_crafter_mode:entity/mob/evoker/final_summon/tick
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/moveset

# スコア加算
    scoreboard players add @s TMCM.SubAction 1

# 召喚
    execute if score @s TMCM.SubAction matches 40 rotated ~ 0 run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/tick

# リセット
    tag @s[scores={TMCM.SubAction=100}] remove TMCM.Evoker.Summoning
    scoreboard players reset @s[scores={TMCM.SubAction=100}] TMCM.SubAction