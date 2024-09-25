#> asset:mob/1013.spider/shoot/spread/summon
#
# 弾の召喚処理
#
# @within function asset:mob/1013.spider/shoot/spread/

# 速度設定
    scoreboard players set $Temporary Chuz.Speed 10

# 召喚
    data modify storage api: Argument.ID set value 1001
    function api:object/summon
