#> asset:mob/enemy.ender_zealot/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:mob/triggers/tick/tick.m

# ゆっくりと付近のプレイヤーを狙う
    execute anchored eyes facing entity @p[distance=..64] eyes positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-200 facing entity @s feet positioned as @s run rotate @s ~ ~

# 付近にいるやつに攻撃
   execute if entity @p[distance=..64] run function asset:mob/enemy.ender_zealot/tick/in_hostile/

# 埋まったらその辺を壊す
   execute unless block ~ ~ ~ #lib:no_collision run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace end_stone
