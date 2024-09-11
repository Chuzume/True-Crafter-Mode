
# 爆発に備えて完全に無敵化
    data modify entity @s NoAI set value 1b
    data modify entity @s Invulnerable set value 1b

# 爆発！
    execute if entity @s[nbt=!{powered:1b}] run summon creeper ~ ~1000 ~ {Invulnerable:1b,Tags:[Chuz.Explosion,Chuz_NonVanillaMob],Fuse:0}
    execute if entity @s[nbt={powered:1b}] run summon creeper ~ ~1000 ~ {powered:1b,Invulnerable:1b,Tags:[Chuz.Explosion,Chuz_NonVanillaMob],Fuse:0}
    tp @e[type=creeper,tag=Chuz.Explosion,limit=1] ~ ~ ~

# 爆発回数加算
    scoreboard players add @s TrueCrafterMode.Entity.Creeper.Count 1

# 爆発しても誰かいるなら起爆開始サウンド
    execute if entity @a[distance=..6] run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1.5 1

# これが3回目の爆発だった場合、虚空へと消える
    execute if score @s TrueCrafterMode.Entity.Creeper.Count matches 3.. run function true_crafter_mode:enemy/common/go_to_void
