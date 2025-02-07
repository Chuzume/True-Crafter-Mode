#> asset:mob/1025.wither/tick/skill/homing/shoot
#
# 射撃
#
# @within function asset:mob/1025.wither/tick/skill/homing/

#> 行き先マーカー
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 0.5
    data modify storage lib: Argument.Spread set value 4.5

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,distance=..128] run function lib:forward_spreader/circle

# 召喚
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s MobUUID
    execute facing entity @n[type=marker,tag=SpreadMarker,distance=..128] eyes run function api:object/summon.m {ID:2002}

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1.5
