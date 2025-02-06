#> asset:mob/1025.wither/tick/reset/
#
# リセット
#
# @within function asset:mob/1025.wither/tick/**

# タグリセット
    tag @s remove 1025.Skill.Charge
    tag @s remove 1025.Skill.Homing
    tag @s remove 1025.Skill.Thunder
    tag @s remove 1025.Skill.Summon
    tag @s remove 1025.InAction
    tag @s remove 1025.StopBaseMove
    
# スコアリセット
    scoreboard players set @s General.Mob.Tick -10
