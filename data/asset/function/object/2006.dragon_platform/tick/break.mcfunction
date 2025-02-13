#> asset:object/2006.dragon_platform/tick/break
#
# 足場消える
#
# @within function asset:object/2006.dragon_platform/tick/

# fill
    fill ~-2 ~-2 ~-2 ~2 ~3 ~2 air replace minecraft:end_stone

# 演出
    #playsound minecraft:block.respawn_anchor.set_spawn neutral @a ~ ~ ~ 2 2
    particle dust{color:[0.8,0.2,1.0],scale:2.0} ~ ~ ~ 1.5 1.5 1.5 0 25 force @a[distance=..16]
