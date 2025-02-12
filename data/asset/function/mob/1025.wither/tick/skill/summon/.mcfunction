#> asset:mob/1025.wither/tick/skill/summon/
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/branch

# しもべが残ってたらそいつを爆発させる
    execute if score @s General.Mob.Tick matches 0 as @e[type=wither_skeleton,scores={MobID=1028},distance=..32,limit=3] at @s run function asset:mob/1025.wither/tick/skill/summon/explosion

# 召喚
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/1025.wither/tick/skill/summon/summon/
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/1025.wither/tick/skill/summon/summon/
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/1025.wither/tick/skill/summon/summon/

# リセット
    execute if score @s General.Mob.Tick matches 140.. run tag @s remove 1025.CycleReset
    execute if score @s General.Mob.Tick matches 140.. run function asset:mob/1025.wither/tick/reset/
