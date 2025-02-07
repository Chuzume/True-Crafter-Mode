#> asset:mob/1025.wither/tick/dash/side/
#
# 
#
# @within function asset:mob/1025.wither/tick/dash/branch

# ダッシュ開始
    execute if score @s[tag=1025.Dash.Left] General.Mob.Tick matches 0 on vehicle run rotate @s ~-75 ~
    execute if score @s[tag=1025.Dash.Right] General.Mob.Tick matches 0 on vehicle run rotate @s ~75 ~

# 本体の向き変更
    execute facing entity @n[tag=TMCM.Target,distance=..64] feet run rotate @s ~ ~

# プレイヤーの方へ誘導する
    execute if score @s General.Mob.Tick matches ..15 run function asset:mob/1025.wither/tick/dash/side/move

# ウソ慣性
    execute if score @s General.Mob.Tick matches 15..20 on vehicle at @s run tp @s ^ ^ ^0.5
    execute if score @s General.Mob.Tick matches 20..25 on vehicle at @s run tp @s ^ ^ ^0.3

# リセット
    execute if score @s General.Mob.Tick matches 25.. run function asset:mob/1025.wither/tick/reset/dash
