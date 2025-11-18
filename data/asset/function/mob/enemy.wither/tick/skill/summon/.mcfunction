#> asset:mob/enemy.wither/tick/skill/summon/
#
# 
#
# @within function asset:mob/enemy.wither/tick/skill/branch

# しもべが残ってたらそいつを爆発させる
    execute if score @s General.Mob.Tick matches 0 as @e[type=wither_skeleton,tag=Mob.enemy.wither_minion,distance=..32,limit=3] at @s run function asset:mob/enemy.wither/tick/skill/summon/explosion

# 召喚
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/enemy.wither/tick/skill/summon/summon/
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/enemy.wither/tick/skill/summon/summon/
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/enemy.wither/tick/skill/summon/summon/

# リセット
    execute if score @s General.Mob.Tick matches 200.. run tag @s remove enemy.wither.CycleReset
    execute if score @s General.Mob.Tick matches 200.. run function asset:mob/enemy.wither/tick/reset/
