#> asset:mob/1024.ender_dragon/tick/skill/landing/landed/thunder/summon
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/landing/landed/tick

# 演出
    playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 3 1
    playsound minecraft:block.respawn_anchor.charge hostile @a ~ ~ ~ 2 2

# 自身のY座標を取得、ストレージに入れてマーカーの拡散に使う
    data modify storage asset:temp Pos.Y set from entity @s Pos[1]
    
# マーカー召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    #function asset:mob/1024.ender_dragon/tick/skill/landing/landed/thunder/spread.m with storage asset:temp Pos
    spreadplayers ~ ~ 20 20 under 100 false @n[type=marker,tag=SpreadMarker,distance=..64]

# マーカーの位置に召喚してキル
    execute at @n[type=marker,tag=SpreadMarker,distance=..64] run function api:object/summon.m {ID:2010}
    kill @n[type=marker,tag=SpreadMarker,distance=..64]

# リセット
    data remove storage asset:temp Pos
