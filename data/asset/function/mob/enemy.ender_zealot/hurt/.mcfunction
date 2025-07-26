#> asset:mob/enemy.ender_zealot/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset_manager:mob/triggers/hurt/hurt.m

# サウンド
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1.5
