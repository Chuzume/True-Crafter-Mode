#> asset:mob/enemy.spider/shoot/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.shoot

# 演出
    playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 2 2

# 距離によって違う攻撃
    # 遠距離
        execute if entity @p[distance=7..14] rotated ~ 0 positioned ^ ^ ^-1 run function asset:mob/enemy.spider/shoot/far
    # 近距離
        execute if entity @p[distance=..7] rotated ~ 0 positioned ^ ^ ^-1 run function asset:mob/enemy.spider/shoot/spread/

# リセット
    scoreboard players reset @s General.Mob.Tick
