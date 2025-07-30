#> asset:mob/enemy.creeper/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m


# プレイヤーが微妙な距離にいるなら透明化
    execute if entity @s[nbt={HurtTime:0s}] unless score @s abstract.chaser_ai.Dig matches 0.. unless score @s enemy.creeper.Tick matches 0.. if entity @a[distance=4..32,tag=!PlayerShouldInvulnerable] run function asset:mob/enemy.creeper/tick/stealth/active

# 近くにいれば解除
    execute if entity @s[tag=enemy.creeper.Stealth] if entity @a[distance=..4,tag=!PlayerShouldInvulnerable] run function asset:mob/enemy.creeper/tick/stealth/deactive

# Super
    function asset:mob/super.tick
