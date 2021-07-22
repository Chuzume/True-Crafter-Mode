# 自身のサイズを取得
    execute store result score @s[tag=!T.HardAlreadyInit] T.HardMoveset2 run data get entity @s Size
    tag @s[tag=!T.HardAlreadyInit] add T.HardAlreadyInit

# 付近にプレイヤーがいたら謎パワーで巨大化
    execute if entity @a[distance=..10] unless entity @s[scores={T.HardMoveset1=100..}] run scoreboard players add @s[nbt=!{Size:0},nbt=!{Size:5}] T.HardMoveset1 1

# tag @s[scores={T.HardMoveset1=100},nbt={Size:0}] add T.HardSlime_Big
    execute if score @s T.HardMoveset1 matches 60 run function t.hard:enemy/slime/expansion
    scoreboard players reset @s[scores={T.HardMoveset1=80..}] T.HardMoveset1

# スコア
    scoreboard players add @s[scores={T.HardMoveset1=60..}] T.HardMoveset1 1
    execute unless entity @a[distance=..10,tag=!T.HardException] run scoreboard players reset @s T.HardMoveset1
