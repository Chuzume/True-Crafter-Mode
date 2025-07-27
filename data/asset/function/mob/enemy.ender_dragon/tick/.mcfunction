#> asset:mob/enemy.ender_dragon/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# ターゲット特定
    execute on target run tag @s[distance=..64] add TMCM.Target

# Tick加算
    scoreboard players add @s[tag=!enemy.ender_dragon.TickLock] General.Mob.Tick 1

# 足場設置行動
    execute at @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128] run function asset:mob/enemy.ender_dragon/tick/place_platform/

# フェイズ2以降、確率でサイドダッシュなどの動作を挟む
#    execute if score @s[tag=!1025.InAction] 1025.Phase matches 2.. if score @s General.Mob.Tick matches 0 run function asset:mob/enemy.wither/tick/dash/select

# スキル発動、ただし技が一周してない場合
    execute if score @s[tag=!enemy.ender_dragon.InAction,tag=!enemy.ender_dragon.CycleReset] General.Mob.Tick matches 60 run function asset:mob/enemy.ender_dragon/tick/skill/select/

# 技が一瞬してたら確定で動作を選択
    execute if score @s[tag=!enemy.ender_dragon.InAction,tag=enemy.ender_dragon.CycleReset] General.Mob.Tick matches 60 run function asset:mob/enemy.ender_dragon/tick/skill/select/cycle_reset

# スキル分岐
    execute if entity @s[tag=enemy.ender_dragon.InAction] run function asset:mob/enemy.ender_dragon/tick/skill/branch

# DragonPhaseをこっちで制御しようかな
    data modify entity @s[tag=!enemy.ender_dragon.InAction] DragonPhase set value 0

# 定期的にDragonPhaseを宣言してもらう
#    execute if score @s General.Mob.Tick matches 40 run tellraw @p {"entity":"@s","nbt":"DragonPhase"}

# 第一形態にて、クリスタルがその辺になければ、無敵解除
    execute if score @s enemy.ender_dragon.Phase matches 1 unless entity @e[type=minecraft:end_crystal,distance=..128] run function asset:mob/enemy.ender_dragon/tick/to_phase_2

# TODO: いつか死亡処理を作ってそっちに担当させるべき
# 死亡時、マーカーを片付ける
    execute if entity @s[nbt={DragonPhase:9}] run kill @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128]

# ターゲット解除
    execute on target run tag @s[distance=..64] remove TMCM.Target
