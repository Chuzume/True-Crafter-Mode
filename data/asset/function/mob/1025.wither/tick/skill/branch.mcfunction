#> asset:mob/1025.wither/tick/skill/branch
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/1025.wither/tick/in_hostile

# ホーミング弾
    execute if entity @s[tag=1025.Skill.Homing] run function asset:mob/1025.wither/tick/skill/homing/
# 突進
    execute if entity @s[tag=1025.Skill.Charge] run function asset:mob/1025.wither/tick/skill/charge/
# 設置レーザー
    execute if entity @s[tag=1025.Skill.Thunder] run function asset:mob/1025.wither/tick/skill/trap_laser/


# １週後の行動
    execute if entity @s[tag=1025.Skill.Summon] run function asset:mob/1025.wither/tick/skill/summon/
