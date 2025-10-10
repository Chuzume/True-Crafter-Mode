#> asset:mob/enemy.outer_enderman_chaser/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:mob/triggers/tick/tick.m

# 接近すると勝手に敵対化する
    # かぼちゃ被って無い時
        execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..24] run data modify entity @s AngryAt set from entity @p[nbt=!{equipment:{head:{id:"minecraft:carved_pumpkin"}}},distance=..16] UUID
    # かぼちゃ被ってる時
        execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..6] run data modify entity @s AngryAt set from entity @p[nbt={equipment:{head:{id:"minecraft:carved_pumpkin"}}},distance=..4] UUID
