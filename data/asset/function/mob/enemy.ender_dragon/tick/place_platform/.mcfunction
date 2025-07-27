#> asset:mob/enemy.ender_dragon/tick/place_platform/
#
# 足場を置く行動を実行する
#
# @within function asset:mob/enemy.ender_dragon/tick/

# この行動を実行している間は、付近のプレイヤーにバフを付与する
    execute as @a[distance=..128] run function asset:mob/enemy.ender_dragon/tick/place_platform/give_effect

# Tick加算
    scoreboard players add @s enemy.ender_dragon.Tick.Platform 1

# 置く
    # 1段目
        execute if score @s enemy.ender_dragon.Tick.Platform matches 20 positioned ~ ~8 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/1
        execute if score @s enemy.ender_dragon.Tick.Platform matches 30 positioned ~ ~8 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/1
        execute if score @s enemy.ender_dragon.Tick.Platform matches 40 positioned ~ ~8 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/1
    # 2段目
        execute if score @s enemy.ender_dragon.Tick.Platform matches 50 positioned ~ ~16 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/2
        execute if score @s enemy.ender_dragon.Tick.Platform matches 60 positioned ~ ~16 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/2
        execute if score @s enemy.ender_dragon.Tick.Platform matches 70 positioned ~ ~16 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/2
    # 3段目
        execute if score @s enemy.ender_dragon.Tick.Platform matches 80 positioned ~ ~32 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/3
        execute if score @s enemy.ender_dragon.Tick.Platform matches 90 positioned ~ ~32 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/3
        execute if score @s enemy.ender_dragon.Tick.Platform matches 100 positioned ~ ~32 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/3
    # 4段目
        execute if score @s enemy.ender_dragon.Tick.Platform matches 110 positioned ~ ~64 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/4
        execute if score @s enemy.ender_dragon.Tick.Platform matches 120 positioned ~ ~64 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/4
        execute if score @s enemy.ender_dragon.Tick.Platform matches 130 positioned ~ ~64 ~ run function asset:mob/enemy.ender_dragon/tick/place_platform/place/4

# リセット
    execute if score @s enemy.ender_dragon.Tick.Platform matches 140.. run scoreboard players reset @s enemy.ender_dragon.Tick.Platform
