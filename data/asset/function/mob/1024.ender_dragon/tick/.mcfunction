#> asset:mob/1024.ender_dragon/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1024/tick

# Tick加算
#    scoreboard players add @s General.Mob.Tick 1

# 足場設置行動
    function asset:mob/1024.ender_dragon/tick/place_platform/

# 戦闘範囲内のプレイヤーにジャンプブーストなどを付与
    effect give @a[distance=..128] jump_boost 3 9


# 定期的にDragonPhaseを宣言してもらう
#    execute if score @s General.Mob.Tick matches 40 run tellraw @p {"entity":"@s","nbt":"DragonPhase"}
#    execute if score @s General.Mob.Tick matches 40 run scoreboard players reset @s General.Mob.Tick


# リセット
