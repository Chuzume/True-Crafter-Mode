#> asset:mob/enemy.wither/tick/reset/
#
# リセット
#
# @within function asset:mob/enemy.wither/tick/**

# タグリセット
    tag @s remove enemy.wither.Skill.Charge
    tag @s remove enemy.wither.Skill.Homing
    tag @s remove enemy.wither.Skill.Thunder
    tag @s remove enemy.wither.Skill.Summon
    tag @s remove enemy.wither.InAction
    tag @s remove enemy.wither.StopBaseMove
    
# スコアリセット
    scoreboard players set @s General.Mob.Tick -10
