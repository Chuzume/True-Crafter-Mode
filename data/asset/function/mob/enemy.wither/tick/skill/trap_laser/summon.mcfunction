#> asset:mob/enemy.wither/tick/skill/trap_laser/summon
#
# 周囲のランダムなプレイヤーの位置に、やけに散らばって召喚される
#
# @within function asset:mob/enemy.wither/tick/skill/trap_laser/

#> 行き先マーカー
# @private
#declare tag SpreadMarker

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 2

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[24d,24d],[0d,8d],[24d,24d]]
    execute as @n[type=marker,tag=SpreadMarker] at @r[tag=!PlayerShouldInvulnerable,distance=..48] positioned ~ ~2 ~ run function lib:spread_entity/

# 召喚
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] facing entity @p[tag=!PlayerShouldInvulnerable,distance=..48] feet run function api:object/summon.m {ID:"projectile.wither_trap_laser"}

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]
