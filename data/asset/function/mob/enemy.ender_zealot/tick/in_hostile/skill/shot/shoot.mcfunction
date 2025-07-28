#> asset:mob/enemy.ender_zealot/tick/in_hostile/skill/shot/shoot
#
# 
#
# @within function asset:mob/enemy.ender_zealot/tick/in_hostile/skill/shot/

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
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Projectile
    execute facing entity @n[type=marker,tag=SpreadMarker,distance=..128] eyes run function api:object/summon.m {ID:"projectile.zealot_bullet"}

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]

# 演出
    playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 2
