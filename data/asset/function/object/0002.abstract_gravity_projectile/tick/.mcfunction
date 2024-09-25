#> asset:object/0002.abstract_gravity_projectile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2/tick

# エンティティへの衝突
    # 判定
        function asset:object/call.m {method:detect_hit_entity}
    # メソッド実行
        execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:hit_entity}
        data remove storage asset:context IsHitEntity

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
