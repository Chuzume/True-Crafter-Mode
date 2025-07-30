#> asset:mob/enemy.creeper/in_hostile/explosion/end
#
# 無敵解除
#
# @within function asset:mob/enemy.creeper/in_hostile/

# 爆発終わったあとに諸々解除する
    attribute @s explosion_knockback_resistance base set 0
    attribute @s knockback_resistance base set 0
    data modify entity @s Invulnerable set value 0b

# リセット
    scoreboard players reset @s enemy.creeper.Tick
    scoreboard players reset @s abstract.chaser_ai.Dig
