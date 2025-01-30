#> asset:mob/1025.wither/tick/skill/branch
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/1025.wither/tick/in_hostile

# スキルその1
    execute if entity @s[tag=1025.Skill.Homing] run function asset:mob/1025.wither/tick/skill/homing/
