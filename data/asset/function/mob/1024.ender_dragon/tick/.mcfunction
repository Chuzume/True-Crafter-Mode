#> asset:mob/1024.ender_dragon/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1024/tick

# ターゲット特定
    execute on target run tag @s[distance=..64] add TMCM.Target

# Tick加算
    scoreboard players add @s General.Mob.Tick 1

# 足場設置行動
    function asset:mob/1024.ender_dragon/tick/place_platform/

# 周囲のプレイヤーのジャンプ力などを上げる
    execute as @a[distance=..128] run function asset:mob/1024.ender_dragon/tick/buff/give

# フェイズ2以降、確率でサイドダッシュなどの動作を挟む
#    execute if score @s[tag=!1025.InAction] 1025.Phase matches 2.. if score @s General.Mob.Tick matches 0 run function asset:mob/1025.wither/tick/dash/select

# スキル発動、ただし技が一周してない場合
    execute if score @s[tag=!1024.InAction,tag=!1024.CycleReset] General.Mob.Tick matches 60 run function asset:mob/1024.ender_dragon/tick/skill/select/

# 技が一瞬してたら確定で動作を選択
    execute if score @s[tag=!1045.InAction,tag=1024.CycleReset] General.Mob.Tick matches 60.. run function asset:mob/1024.ender_dragon/tick/skill/select/cycle_reset

# スキル分岐
    execute if entity @s[tag=1024.InAction] run function asset:mob/1024.ender_dragon/tick/skill/branch

# DragonPhaseをこっちで制御しようかな
    data modify entity @s DragonPhase set value 0

# 定期的にDragonPhaseを宣言してもらう
#    execute if score @s General.Mob.Tick matches 40 run tellraw @p {"entity":"@s","nbt":"DragonPhase"}

# ターゲット解除
    execute on target run tag @s[distance=..64] remove TMCM.Target
