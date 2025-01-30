#> asset:object/0001.abstract_projectile/detect_hit_block/
#
# ブロックへの接触を判定: デフォルトではno_collisionじゃないのにぶつかったら消える
#
# @within asset:object/alias/1/detect_hit_block

# 判定
    execute unless block ~ ~ ~ #lib:no_collision run data modify storage asset:context IsHitBlock set value true
