#> asset:mob/enemy.ender_zealot/tick/in_hostile/reset
#
# 
#
# @within function asset:mob/enemy.ender_zealot/tick/in_hostile/

# タグリセット
    tag @s remove enemy.ender_zealot.Skill.Laser
    tag @s remove enemy.ender_zealot.Skill.Homing
    tag @s remove enemy.ender_zealot.Skill.Thunder
    tag @s remove enemy.ender_zealot.InAction
    
# スコアリセット
    scoreboard players set @s General.Mob.Tick -10
