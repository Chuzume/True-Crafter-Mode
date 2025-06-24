#> asset:mob/enemy.enderman/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.in_hostile

# 対象がいる場合はTick加算
    execute if entity @p[distance=..5] run scoreboard players add @s 1012.Tick 1

# 一定の値でブロックを破壊
    execute if entity @s[scores={1012.Tick=30..}] facing entity @p eyes rotated ~ 0 run function asset:mob/enemy.enderman/in_hostile/block_break
