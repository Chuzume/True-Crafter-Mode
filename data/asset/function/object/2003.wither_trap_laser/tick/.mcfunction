#> asset:object/2003.wither_trap_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2003/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# 数Tickごとに実行
    scoreboard players operation $Interval Temporary %= $5 Const
    
# アラート
    execute if score @s General.Object.Tick matches 0..100 if score $Interval Temporary matches 0 run function asset:object/2003.wither_trap_laser/tick/alert/
# アクティブ
    execute if score @s General.Object.Tick matches 100 at @a[distance=..32] run function asset:object/2003.wither_trap_laser/tick/laser/active
# 攻撃
    execute if score @s General.Object.Tick matches 100.. if score $Interval Temporary matches 0 run function asset:object/2003.wither_trap_laser/tick/laser/
# リセット
    scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=300..}]
