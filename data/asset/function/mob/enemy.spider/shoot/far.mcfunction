#> asset:mob/enemy.spider/shoot/far
#
# 蜘蛛の巣を飛ばしてくる
#
# @within function asset:mob/enemy.spider/shoot/

# 速度設定
    data modify storage lib: Argument.VectorMagnitude set value 1.5

# ターゲッティング
    execute as @n[tag=TMCM.Target] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~1 ~ {Tags:["TMCM.Marker.Aim"]}

# 召喚
    function api:object/summon.m {ID:"projectile.spider_web"}
