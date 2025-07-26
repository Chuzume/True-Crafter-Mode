#> asset:mob/enemy.ender_zealot/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:mob/triggers/tick/tick.m

# ゆっくりと付近のプレイヤーを狙う
    execute anchored eyes facing entity @p[distance=..64] eyes positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-100 facing entity @s feet positioned as @s run rotate @s ~ ~
