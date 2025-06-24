#> asset:mob/enemy.slime/inflate/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.inflate

# 周囲のスライムの数を数えて、限界以上だったら膨張はやめる
    execute store result score @s 1020.Count run execute if entity @e[type=slime,distance=..16]
    execute if score @s 1020.Count matches 10.. run scoreboard players reset @s General.Mob.Tick
    execute if score @s 1020.Count matches 10.. run return fail

# 自分がデカすぎたらやめる
    execute if entity @s[nbt={Size:4}] run return fail

# 保存しておいたスコアに1を足し、そのサイズになる
    scoreboard players add @s 1020.Size 1 
    execute store result entity @s Size int 1 run scoreboard players get @s 1020.Size

# 演出
    particle explosion ~ ~0.8 ~ 0 0 0 0 1
    particle instant_effect ~ ~0.8 ~ 0 0 0 0.1 5
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 1.5 0.75

# リセット
    scoreboard players reset @s General.Mob.Tick
    scoreboard players reset @s 1020.Count
