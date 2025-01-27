#> asset:mob/1011.creeper/in_hostile/explosion/
#
# 
#
# @within function asset:mob/1011.creeper/in_hostile/

# 爆発に備えて完全に無敵化
    attribute @s explosion_knockback_resistance base set 1
    data modify entity @s Invulnerable set value 1b

# 爆発！
    execute if entity @s[nbt=!{powered:1b}] run summon creeper ~ ~1000 ~ {Invulnerable:1b,Tags:[Chuz.Explosion,Chuz.NonVanillaMob],Fuse:0}
    execute if entity @s[nbt={powered:1b}] run summon creeper ~ ~1000 ~ {powered:1b,Invulnerable:1b,Tags:[Chuz.Explosion,Chuz.NonVanillaMob],Fuse:0}
    tp @e[type=creeper,tag=Chuz.Explosion,limit=1] ~ ~ ~

# 爆発回数加算
    scoreboard players add @s 1011.AttackCount 1

# 爆発しても誰かいるなら起爆開始サウンド
    execute if entity @a[distance=..6] run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1.5 1

# これが3回目の爆発だった場合、虚空へと消える
    execute if score @s 1011.AttackCount matches 3.. run function true_crafter_mode:entity/mob/common_moveset/void_kill
