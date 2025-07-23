#> asset:mob/enemy.wither/tick/skill/branch
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/enemy.wither/tick/in_hostile

# ホーミング弾
    execute if entity @s[tag=enemy.wither.Skill.Homing] run function asset:mob/enemy.wither/tick/skill/homing/
# 突進
    execute if entity @s[tag=enemy.wither.Skill.Charge] run function asset:mob/enemy.wither/tick/skill/charge/
# 設置レーザー
    execute if entity @s[tag=enemy.wither.Skill.Thunder] run function asset:mob/enemy.wither/tick/skill/trap_laser/


# １週後の行動
    execute if entity @s[tag=enemy.wither.Skill.Summon] run function asset:mob/enemy.wither/tick/skill/summon/
