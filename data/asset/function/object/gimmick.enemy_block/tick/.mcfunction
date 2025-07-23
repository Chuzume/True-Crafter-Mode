#> asset:object/gimmick.enemy_block/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# Tick加算、ただし上に敵キャラが乗ってるならやらない
    execute align xyz positioned ~0.5 ~1 ~0.5 unless entity @e[type=#true_crafter_mode:enemy,distance=..1] run scoreboard players add @s General.Object.Tick 1
    execute as @s[scores={General.Object.Tick=60..}] run setblock ~ ~ ~ air destroy
    
#本体のブロックがなければ自壊、アイテム削除
    execute if block ~ ~ ~ air run kill @n[type=item,distance=..1]
    execute if block ~ ~ ~ air run kill @s
    