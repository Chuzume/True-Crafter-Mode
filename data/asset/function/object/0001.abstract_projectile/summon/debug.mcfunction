#> asset:object/0001.abstract_projectile/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# データ指定
    data modify storage api: Argument.FieldOverride set value {Speed:10,Range:30,MovePerStep:0.5}

# 召喚
    data modify storage api: Argument.ID set value 1
    function api:object/summon
