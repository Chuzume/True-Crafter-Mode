#> asset:object/2007.ender_eye_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2007/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
    execute if score @s General.Object.Tick matches ..40 run function asset:object/2007.ender_eye_laser/tick/laser/alert

# 発射
    execute if score @s General.Object.Tick matches 40 run function asset:object/2007.ender_eye_laser/tick/laser/shoot

# 消える
    execute if score @s General.Object.Tick matches 80.. run function asset:object/2007.ender_eye_laser/tick/death
