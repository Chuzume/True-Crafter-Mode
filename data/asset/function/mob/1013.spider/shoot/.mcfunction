#> asset:mob/1013.spider/shoot/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1013/shoot

# 演出
    playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 2 2

# 距離によって違う攻撃
    # 遠距離
        execute if entity @p[distance=7..14] rotated ~ 0 positioned ^ ^ ^-1 run function asset:mob/1013.spider/shoot/far
    # 近距離
        execute if entity @p[distance=..7] rotated ~ 0 positioned ^ ^ ^-1 run function asset:mob/1013.spider/shoot/spread/

# リセット
    scoreboard players reset @s 1013.Tick
