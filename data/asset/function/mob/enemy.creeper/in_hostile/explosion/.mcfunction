#> asset:mob/enemy.creeper/in_hostile/explosion/
#
# 
#
# @within function asset:mob/enemy.creeper/in_hostile/

# 爆発に備えて完全に無敵化
    attribute @s explosion_knockback_resistance base set 1
    data modify entity @s Invulnerable set value 1b

# 爆発！
    execute if entity @s[nbt=!{powered:1b}] run summon creeper ~ ~1000 ~ {Invulnerable:1b,Tags:["AIMob"],Fuse:0}
    execute if entity @s[nbt={powered:1b}] run summon creeper ~ ~1000 ~ {powered:1b,Invulnerable:1b,Tags:["AIMob"],Fuse:0}
    tp @e[type=creeper,tag=AIMob,limit=1] ~ ~ ~

# 爆発回数加算
    scoreboard players add @s enemy.creeper.AttackCount 1

# 爆発しても誰かいるなら起爆開始サウンド
    execute if entity @a[distance=..6] run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1.5 1

# これが3回目の爆発だった場合、虚空へと消える
    execute if score @s enemy.creeper.AttackCount matches 3.. run tp @s ~ -1000 ~
