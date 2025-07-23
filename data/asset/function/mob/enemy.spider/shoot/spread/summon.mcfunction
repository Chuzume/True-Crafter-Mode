#> asset:mob/enemy.spider/shoot/spread/summon
#
# 弾の召喚処理
#
# @within function asset:mob/enemy.spider/shoot/spread/

# 速度設定
    data modify storage lib: Argument.VectorMagnitude set value 1

# 召喚
    function api:object/summon.m {ID:"projectile.spider_web"}
