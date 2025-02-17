#> asset:object/2010.dragon_light_pillar/tick/thunder
#
# 
#
# @within function asset:object/2010.dragon_light_pillar/tick/

# 演出(ビーム)
    particle explosion ~ ~20 ~ 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[1.0,1.0,1.0],scale:2} ~ ~10 ~ 0.4 5 0.4 1 200 force @a[distance=..64]
    particle end_rod ~ ~10 ~ 0.4 5 0.4 0 50 force @a[distance=..64]

# 演出(爆発)
    particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 10
    particle minecraft:explosion ~ ~ ~ 1.5 0.5 1.5 0 7 force @a[distance=..32]
    particle dust_pillar{block_state:"minecraft:white_stained_glass"} ~ ~0.5 ~ 1.2 0 1.2 0.5 100 normal

# サウンド
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 2 1
    playsound minecraft:entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.5 0.5 1
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 2 2

# ダメージ
    execute as @a[distance=..3] run function asset:object/2010.dragon_light_pillar/tick/damage.m with storage asset:context this

# 消失
    kill @s
