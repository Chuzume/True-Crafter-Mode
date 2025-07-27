#> asset:object/enemy_part.ender_zealot_eye/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 持ち主と同じ向きになる: 気味の悪いコマンドだが、位置調整のためにinteractionを間に挟んでいるためこうなる…
    execute if predicate lib:is_vehicle on vehicle on vehicle rotated as @s on passengers on passengers run rotate @s[type=item_display] ~ ~

# パーティクル
    # 元気
        execute if predicate lib:is_vehicle rotated ~ ~90 run function asset:object/enemy_part.ender_zealot_eye/tick/shape
    # 爆発
        execute unless predicate lib:is_vehicle rotated ~ ~90 run function asset:object/enemy_part.ender_zealot_eye/tick/shape_danger

# 誰にも乗ってない…オレは死ぬのか…
    execute unless predicate lib:is_vehicle run function asset:object/enemy_part.ender_zealot_eye/tick/death/tick
