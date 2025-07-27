#> asset:object/enemy_part.ender_zealot_eye/tick/death/explode
#
# 
#
# @within function asset:object/enemy_part.ender_zealot_eye/tick/death/tick

# 爆発
    summon creeper ~ ~1000 ~ {ExplosionRadius:2,Invulnerable:1b,Tags:[Chuz.Explosion,Chuz.NonVanillaMob],Fuse:0}
    tp @e[type=creeper,tag=Chuz.Explosion,limit=1] ~ ~ ~

# 最寄りのエンダードラゴンにダメージを与える
    damage @n[type=ender_dragon,distance=..128] 15 minecraft:generic by @p[distance=..128]

# 消える
    kill @s
