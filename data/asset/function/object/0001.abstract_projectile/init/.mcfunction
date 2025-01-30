#> asset:object/0001.abstract_projectile/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1/init

# 上記が設定されてなければ、デフォルト値で0.5にする
    execute unless data storage asset:context this.MovePerStep run data modify storage asset:context this.MovePerStep set value 0.5

# エラー
    execute unless data storage asset:context this.Speed run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"速度が設定されていない！"}]
    execute unless data storage asset:context this.Range run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"飛距離が設定されていない！"}]

# Range を移しておく
    data modify storage asset:context this.RemainingRange set from storage asset:context this.Range
