#> asset:mob/1025.wither/tick/skill/summon/
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/branch

# リセット
    execute if score @s General.Mob.Tick matches 140 run tag @s remove 1025.CycleReset
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/1025.wither/tick/reset/
