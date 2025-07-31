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
    execute if entity @s[tag=!enemy.ender_dragon.Death] at @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128] run function asset:mob/enemy.ender_dragon/tick/place_platform/

# フェイズ2以降の処理
    execute if score @s[tag=!enemy.ender_dragon.Death] enemy.ender_dragon.Phase matches 2.. run function asset:mob/enemy.ender_dragon/tick/phase_2/tick

# TODO: デバッグ用なのでオフにすること
# 無条件でフェイズ2の動作をやる
    #function asset:mob/enemy.ender_dragon/tick/phase_2/tick

# スキル発動、ただし技が一周してない場合
    execute if score @s[tag=!enemy.ender_dragon.InAction,tag=!enemy.ender_dragon.CycleReset] General.Mob.Tick matches 60 run function asset:mob/enemy.ender_dragon/tick/skill/select/

# 技が一瞬してたら確定で動作を選択
    execute if score @s[tag=!enemy.ender_dragon.InAction,tag=enemy.ender_dragon.CycleReset] General.Mob.Tick matches 60 run function asset:mob/enemy.ender_dragon/tick/skill/select/cycle_reset

# スキル分岐
    execute if entity @s[tag=enemy.ender_dragon.InAction] run function asset:mob/enemy.ender_dragon/tick/skill/branch

# DragonPhaseをこっちで制御しようかな
    execute if entity @s[tag=!enemy.ender_dragon.Death] run data modify entity @s[tag=!enemy.ender_dragon.InAction] DragonPhase set value 0

# デバッグ用の処理
# 定期的にDragonPhaseを宣言してもらう
#    execute if score @s General.Mob.Tick matches 40 run tellraw @p {"entity":"@s","nbt":"DragonPhase"}

# 第一形態にて、現在地点が読み込まれているかつ、クリスタルがその辺になければ、無敵解除
    execute if score @s enemy.ender_dragon.Phase matches 1 if loaded ~ ~ ~ unless entity @e[type=minecraft:end_crystal,distance=..128] run function asset:mob/enemy.ender_dragon/tick/to_phase_2

# TODO: いつか死亡処理を作ってそっちに担当させるべき
# 死亡時、マーカーを片付ける
    execute if entity @s[nbt={DragonPhase:9},tag=!enemy.ender_dragon.Death] run function asset:mob/enemy.ender_dragon/tick/death

# ターゲット解除
    execute on target run tag @s[distance=..64] remove TMCM.Target
