#> asset:mob/1024.ender_dragon/tick/skill/homing/shoot
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/homing/

#> 行き先マーカー
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 3

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,distance=..128] run function lib:forward_spreader/circle

# 召喚
    data modify storage api: Argument.FieldOverride set value {Speed:1,Range:150,MovePerStep:0.5}
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s MobUUID
    execute facing entity @n[type=marker,tag=SpreadMarker,distance=..128] eyes run function api:object/summon.m {ID:2008}

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]

# 演出
    playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 6 1.0
    playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 6 1.0
