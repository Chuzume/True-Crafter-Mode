#> asset:mob/enemy.ender_dragon/tick/skill/branch
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/

# レーザーめんたま
    execute if entity @s[tag=1024.Skill.AimingEye] run function asset:mob/enemy.ender_dragon/tick/skill/aiming_eyes/
# ホーミング弾
    execute if entity @s[tag=1024.Skill.HomingFireball] run function asset:mob/enemy.ender_dragon/tick/skill/homing/
# 突進
    execute if entity @s[tag=1024.Skill.Charge] run function asset:mob/enemy.ender_dragon/tick/skill/charge/
# 着地
    execute if entity @s[tag=1024.Skill.Landing] run function asset:mob/enemy.ender_dragon/tick/skill/landing/


# １週後の行動
    execute if entity @s[tag=1025.Skill.Summon] run function asset:mob/enemy.wither/tick/skill/summon/
