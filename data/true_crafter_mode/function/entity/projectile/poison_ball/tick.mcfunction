# Tick加算
    scoreboard players add @s TMCM.Tick 1

# 演出
    particle minecraft:item_slime ~ ~ ~ 0 0 0 0 1
    particle minecraft:dust{color:[0.0,0.5,0.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 0
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run function true_crafter_mode:entity/projectile/poison_ball/hit

# ヒット時に消滅
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run scoreboard players set @s TMCM.Tick 50

# 消滅
    execute if entity @s[scores={TMCM.Tick=50..}] on passengers run kill @s
    kill @s[scores={TMCM.Tick=50..}]
