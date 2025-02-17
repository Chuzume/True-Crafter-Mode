#> asset:mob/1024.ender_dragon/tick/place_platform/
#
# 足場を置く行動を実行する
#
# @within function asset:mob/1024.ender_dragon/tick/

# この行動を実行している間は、付近のプレイヤーにバフを付与する
    execute as @a[distance=..128] run function asset:mob/1024.ender_dragon/tick/place_platform/give_effect

# Tick加算
    scoreboard players add @s 1024.Tick.Platform 1

# 置く
    # 1段目
        execute if score @s 1024.Tick.Platform matches 20 run function asset:mob/1024.ender_dragon/tick/place_platform/place/1
        execute if score @s 1024.Tick.Platform matches 20 run function asset:mob/1024.ender_dragon/tick/place_platform/place/1
        execute if score @s 1024.Tick.Platform matches 20 run function asset:mob/1024.ender_dragon/tick/place_platform/place/1
    # 2段目
        execute if score @s 1024.Tick.Platform matches 40 run function asset:mob/1024.ender_dragon/tick/place_platform/place/2
        execute if score @s 1024.Tick.Platform matches 40 run function asset:mob/1024.ender_dragon/tick/place_platform/place/2
        execute if score @s 1024.Tick.Platform matches 40 run function asset:mob/1024.ender_dragon/tick/place_platform/place/2
    # 3段目
        execute if score @s 1024.Tick.Platform matches 60 run function asset:mob/1024.ender_dragon/tick/place_platform/place/3
        execute if score @s 1024.Tick.Platform matches 60 run function asset:mob/1024.ender_dragon/tick/place_platform/place/3
        execute if score @s 1024.Tick.Platform matches 60 run function asset:mob/1024.ender_dragon/tick/place_platform/place/3
    # 4段目
        execute if score @s 1024.Tick.Platform matches 80 run function asset:mob/1024.ender_dragon/tick/place_platform/place/4
        execute if score @s 1024.Tick.Platform matches 80 run function asset:mob/1024.ender_dragon/tick/place_platform/place/4
        execute if score @s 1024.Tick.Platform matches 80 run function asset:mob/1024.ender_dragon/tick/place_platform/place/4

# リセット
    execute if score @s 1024.Tick.Platform matches 200.. run scoreboard players reset @s 1024.Tick.Platform
