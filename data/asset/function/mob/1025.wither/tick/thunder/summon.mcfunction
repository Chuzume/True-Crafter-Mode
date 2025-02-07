#> asset:mob/1025.wither/tick/thunder/summon
#
# 
#
# @within function asset:mob/1025.wither/tick/thunder/

# 最寄りのウィザーヘッドをキル
    execute at @n[type=wither_skull,distance=..8] run particle minecraft:electric_spark ~ ~0.2 ~ 0.1 0.1 0.1 1 20
    kill @n[type=wither_skull,distance=..8]

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 1.5

# ターゲットの座標に召喚
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s MobUUID
    execute at @n[tag=TMCM.Target] run function api:object/summon.m {ID:2005}
