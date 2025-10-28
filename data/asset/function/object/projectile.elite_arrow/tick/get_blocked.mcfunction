#> asset:object/projectile.elite_arrow/tick/get_blocked
#
# 防がれた！
#
# @within function asset:object/projectile.elite_arrow/tick/

# 無重力オフ
    data modify entity @s NoGravity set value false

# 対象のスコアリセット
    scoreboard players reset @p[dx=0] projectile.elite_arrow.block
