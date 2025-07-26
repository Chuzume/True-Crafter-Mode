#> asset:object/enemy_part.ender_zealot_eye/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 持ち主と同じ向きになる: 気味の悪いコマンドだが、位置調整のためにinteractionを間に挟んでいるためこうなる…
    execute on vehicle on vehicle rotated as @s on passengers on passengers run rotate @s[type=item_display] ~ ~
