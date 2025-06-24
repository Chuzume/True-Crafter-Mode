#> asset:mob/1024.ender_dragon/tick/reset
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/aiming_eyes/

# タグリセット
    tag @s remove 1024.InAction
    tag @s remove 1024.Skill.AimingEye
    tag @s remove 1024.Skill.HomingFireball
    tag @s remove 1024.Skill.Charge
    tag @s remove 1024.Skill.Landing

# スコアリセット
    scoreboard players set @s General.Mob.Tick -10
