#> asset:mob/1011.creeper/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1011/tick


# プレイヤーが微妙な距離にいるなら透明化
    execute if entity @s[tag=!HurtEntity] unless score @s 3.Tick.Dig matches 0.. unless score @s 1011.Tick matches 0.. if entity @a[distance=4..32,tag=!TMCM.Exception] run function asset:mob/1011.creeper/tick/stealth/active

# 近くにいれば解除
    execute if entity @s[tag=1011.Stealth] if entity @a[distance=..4,tag=!TMCM.Exception] run function asset:mob/1011.creeper/tick/stealth/deactive

# Super
    function asset:mob/super.tick

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
