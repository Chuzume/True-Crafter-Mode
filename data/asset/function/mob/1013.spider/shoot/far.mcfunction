#> asset:mob/1013.spider/shoot/far
#
# 蜘蛛の巣を飛ばしてくる
#
# @within function asset:mob/1013.spider/shoot/

# 速度設定
    scoreboard players set $Temporary Chuz.Speed 20

# ターゲッティング
    execute as @n[tag=TMCM.Target] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["TMCM.Marker.Aim"]}

# 召喚
    data modify storage api: Argument.ID set value 1001
    function api:object/summon
