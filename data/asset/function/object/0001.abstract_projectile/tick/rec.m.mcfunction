#> asset:object/0001.abstract_projectile/tick/rec.m
#
# 再帰処理
#
# @input args
#   MovePerStep: double
# @within function asset:object/0001.abstract_projectile/tick/*

# TP
    tp @s ~ ~ ~

# パーティクルなど、この再帰内で一緒に実行してほしいメソッド
    function asset:object/call.m {method:"recursive"}

# エンティティへの衝突
    # 判定
        execute if score @s ObjectID matches -2147483648..2147483647 run function asset:object/call.m {method:"detect_hit_entity"}
    # メソッド実行
        execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
        data remove storage asset:context IsHitEntity

# ブロックへの衝突
    # 判定
        execute if score @s ObjectID matches -2147483648..2147483647 run function asset:object/call.m {method:"detect_hit_block"}
    # メソッド実行
        execute if data storage asset:context {IsHitBlock:true} run function asset:object/call.m {method:"hit_block"}
        data remove storage asset:context IsHitBlock

# RemainingRange を減らす
    execute store result storage asset:context this.RemainingRange int 0.9999999999 run data get storage asset:context this.RemainingRange 1
# 距離を使い果たした場合
    execute if score @s ObjectID matches -2147483648..2147483647 if data storage asset:context this{RemainingRange:0} run function asset:object/call.m {method:"range_over"}

# 再帰
    execute store result storage asset:temp MoveCount int 0.9999999999 run data get storage asset:temp MoveCount 1
    $execute if score @s ObjectID matches -2147483648..2147483647 unless data storage asset:context this{RemainingRange:0} unless data storage asset:temp {MoveCount:0} positioned ^ ^ ^$(MovePerStep) run function asset:object/0001.abstract_projectile/tick/rec.m with storage asset:context this
