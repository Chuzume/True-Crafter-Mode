#> asset:mob/enemy.creeper/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m


# プレイヤーが微妙な距離にいるなら透明化
    execute if entity @s[tag=!HurtEntity] unless score @s abstract.chaser_ai.Dig matches 0.. unless score @s 1011.Tick matches 0.. if entity @a[distance=4..32,tag=!PlayerShouldInvulnerable] run function asset:mob/enemy.creeper/tick/stealth/active

# 近くにいれば解除
    execute if entity @s[tag=1011.Stealth] if entity @a[distance=..4,tag=!PlayerShouldInvulnerable] run function asset:mob/enemy.creeper/tick/stealth/deactive

# Super
    function asset:mob/super.tick
