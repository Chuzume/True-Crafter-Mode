# 自身のサイズを取得
    execute store result score @s[tag=!TrueCrafterMode.AlreadyInit] T.HardMoveset2 run data get entity @s Size
    tag @s[tag=!TrueCrafterMode.AlreadyInit] add TrueCrafterMode.AlreadyInit

# 付近にプレイヤーがいたら謎パワーで巨大化
    execute if entity @a[distance=..10] unless entity @s[scores={TrueCrafterMode.Tick=100..}] run scoreboard players add @s[nbt=!{Size:0},nbt=!{Size:5}] TrueCrafterMode.Tick 1

# tag @s[scores={TrueCrafterMode.Tick=100},nbt={Size:0}] add T.HardSlime_Big
    execute if score @s TrueCrafterMode.Tick matches 60 run function true_crafter_mode:enemy/slime/expansion
    scoreboard players reset @s[scores={TrueCrafterMode.Tick=80..}] TrueCrafterMode.Tick

# スコア
    scoreboard players add @s[scores={TrueCrafterMode.Tick=60..}] TrueCrafterMode.Tick 1
    execute unless entity @a[distance=..10,tag=!TrueCrafterMode.Exception] run scoreboard players reset @s TrueCrafterMode.Tick
