#> asset:mob/enemy.ender_dragon/tick/reset
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/skill/aiming_eyes/

# タグリセット
    tag @s remove enemy.ender_dragon.InAction
    tag @s remove enemy.ender_dragon.Skill.AimingEye
    tag @s remove enemy.ender_dragon.Skill.HomingFireball
    tag @s remove enemy.ender_dragon.Skill.Charge
    tag @s remove enemy.ender_dragon.Skill.Landing

# スコアリセット
    scoreboard players set @s General.Mob.Tick -10
