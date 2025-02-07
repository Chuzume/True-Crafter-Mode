#> asset:object/2005.wither_thunder/tick/thunder
#
# 
#
# @within function asset:object/2005.wither_thunder/tick/

# 演出(ビーム)
    particle explosion ~ ~20 ~ 0 0 0 0 1 force @a[distance=..32]
    particle dust_color_transition{from_color:[0.878,0.969,0.576],scale:1,to_color:[0.2,0.2,0.2]} ~ ~10 ~ 0.2 5 0.2 1 200 force @a[distance=..64]
    particle smoke ~ ~10 ~ 0.4 5 0.4 0 200 force @a[distance=..64]

# 演出(爆発)
    particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 5
    particle minecraft:explosion ~ ~ ~ 1 0.5 1 0 5 force @a[distance=..32]
    particle dust_pillar{block_state:"minecraft:black_stained_glass"} ~ ~0.5 ~ 1.2 0 1.2 0.5 100 normal

# サウンド
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.5 0.5 1
    playsound minecraft:entity.wither_skeleton.hurt neutral @a ~ ~ ~ 1 0.7

# ダメージ
    execute as @a[distance=..2] run function asset:object/2005.wither_thunder/tick/damage.m with storage asset:context this

# 消失
    kill @s
