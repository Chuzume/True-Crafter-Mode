#> asset:object/2007.ender_eye_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2007/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 誘導！
    execute if score @s General.Object.Tick matches ..60 facing entity @p[distance=..64] eyes positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-100 facing entity @s feet positioned as @s run rotate @s ~ ~

# 予告
    execute if score @s General.Object.Tick matches ..60 run function asset:object/2007.ender_eye_laser/tick/laser/alert

# 発射
    execute if score @s General.Object.Tick matches 60 run function asset:object/2007.ender_eye_laser/tick/laser/shoot

# 消える
    execute if score @s General.Object.Tick matches 80.. run function asset:object/2007.ender_eye_laser/tick/death
