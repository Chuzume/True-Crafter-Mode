# Tick加算
    scoreboard players add @s TrueCrafterMode.Tick 1

# 接触したプレイヤーにデバフ
    particle minecraft:spit ~ ~ ~ 0 0 0 0 1
    execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:slowness 2 3
    execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:mining_fatigue 2 5

# 消滅
    execute if entity @s[scores={TrueCrafterMode.Tick=100..}] on passengers run kill @s
    kill @s[scores={TrueCrafterMode.Tick=100..}]
