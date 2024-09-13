# 自身のサイズを取得
    execute store result score @s[tag=!TMCM.AlreadyInit] TMCM.SubAction run data get entity @s Size
    tag @s[tag=!TMCM.AlreadyInit] add TMCM.AlreadyInit

# 付近にプレイヤーがいたら謎パワーで巨大化
    execute if entity @a[distance=..10] unless entity @s[scores={TMCM.Tick=100..}] run scoreboard players add @s[nbt=!{Size:0},nbt=!{Size:5}] TMCM.Tick 1

# tag @s[scores={TMCM.Tick=100},nbt={Size:0}] add T.HardSlime_Big
    execute if score @s TMCM.Tick matches 60 run function true_crafter_mode:enemy/slime/expansion
    scoreboard players reset @s[scores={TMCM.Tick=80..}] TMCM.Tick

# スコア
    scoreboard players add @s[scores={TMCM.Tick=60..}] TMCM.Tick 1
    execute unless entity @a[distance=..10,tag=!TMCM.Exception] run scoreboard players reset @s TMCM.Tick
