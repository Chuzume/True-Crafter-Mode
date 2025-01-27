#> asset:mob/1011.creeper/in_hostile/explosion/end
#
# 無敵解除
#
# @within function asset:mob/1011.creeper/in_hostile/

# 爆発終わったあとに諸々解除する
    attribute @s explosion_knockback_resistance base set 0
    data modify entity @s Invulnerable set value 0b

# リセット
    scoreboard players reset @s 1011.Tick
    scoreboard players reset @s 3.Tick.Dig
