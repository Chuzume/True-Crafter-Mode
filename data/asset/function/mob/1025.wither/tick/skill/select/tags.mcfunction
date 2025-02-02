#> asset:mob/1025.wither/tick/skill/select/tags
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/select/get.m

# デバッグ用処理: 技を名指しで指定
# TODO: ちゃんと消すんだよ！
#    tag @s add 1025.Skill.Thunder
#    return fail

# 技を選択
    execute if data storage asset:context this.Skill{Get:0} run tag @s add 1025.Skill.Homing
    execute if data storage asset:context this.Skill{Get:1} run tag @s add 1025.Skill.Charge
    execute if data storage asset:context this.Skill{Get:2} run tag @s add 1025.Skill.Thunder
