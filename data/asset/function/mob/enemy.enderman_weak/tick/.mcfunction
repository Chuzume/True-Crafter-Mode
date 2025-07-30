#> asset:mob/enemy.enderman_weak/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:mob/triggers/tick/tick.m

# その辺のやつに殴りかかってくる！
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..16] run data modify entity @s AngryAt set from entity @p[distance=..16] UUID
