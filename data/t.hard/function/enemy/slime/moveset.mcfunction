# 自身のサイズを取得
    execute store result score @s[tag=!t.hardAlreadyInit] t.hardMoveset2 run data get entity @s Size
    tag @s[tag=!t.hardAlreadyInit] add t.hardAlreadyInit

# 付近にプレイヤーがいたら謎パワーで巨大化
    execute if entity @a[distance=..10] unless entity @s[scores={t.hardMoveset1=100..}] run scoreboard players add @s[nbt=!{Size:0},nbt=!{Size:5}] t.hardMoveset1 1

# tag @s[scores={t.hardMoveset1=100},nbt={Size:0}] add t.hardSlime_Big
    execute if score @s t.hardMoveset1 matches 60 run function t.hard:enemy/slime/expansion
    scoreboard players reset @s[scores={t.hardMoveset1=80..}] t.hardMoveset1

# スコア
    scoreboard players add @s[scores={t.hardMoveset1=60..}] t.hardMoveset1 1
    execute unless entity @a[distance=..10,tag=!t.hardException] run scoreboard players reset @s t.hardMoveset1
