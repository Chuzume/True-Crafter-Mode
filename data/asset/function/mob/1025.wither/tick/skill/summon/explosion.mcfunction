#> asset:mob/1025.wither/tick/skill/summon/explosion
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/summon/

# 爆発
    summon fireball ~ ~ ~ {ExplosionPower:2b,Invulnerable:1b,Motion:[0.0,-10.0,0.0]}

# 消失
    tp @s ~ -64 ~
    kill @s
