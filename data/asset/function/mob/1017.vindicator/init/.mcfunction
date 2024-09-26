#> asset:mob/1017.vindicator/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1017/init

# ステータス
    attribute @s minecraft:generic.movement_speed base set 0.4
    attribute @s minecraft:generic.step_height base set 1
    attribute @s generic.max_health base set 30
    effect give @s instant_health 1 100 true

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
