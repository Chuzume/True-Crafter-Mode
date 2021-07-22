#> t.hard_score_damage:core/attack
#
# ダメージ与えるよ
#
# @within function t.hard_score_damage:api/*

#> 変数定義
# @internal
    #declare score_holder $Damage
    #declare score_holder $EPF
    #declare score_holder $Health
    #declare score_holder $defensePoints
    #declare score_holder $toughness
    #declare score_holder $Resistance

# 引数データをコピー
    execute store result score $Damage ScoreDamageCore run data get storage t.hard_score_damage: Damage 100
# 計算に必要な値を取得
    function t.hard_score_damage:core/get_status
# 与えるダメージの計算
    function t.hard_score_damage:core/calc
# Mobに適用
    function t.hard_score_damage:core/health_subtract