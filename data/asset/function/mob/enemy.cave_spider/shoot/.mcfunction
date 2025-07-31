#> asset:mob/enemy.cave_spider/shoot/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.shoot

# 距離によって使うかどうか違う
    # 遠距離
        execute if entity @p[distance=5..14] rotated ~ 0 positioned ^ ^ ^-1 run function asset:mob/enemy.cave_spider/shoot/far
    # 近距離
        #execute if entity @p[distance=..7] rotated ~ 0 positioned ^ ^ ^-1 run return fail

# リセット
    scoreboard players reset @s General.Mob.Tick
