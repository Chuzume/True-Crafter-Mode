
# 透明化する
    execute if entity @s[tag=!T.HardStealthMove] run particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 25
    effect give @s minecraft:invisibility 1 0
    particle smoke ~ ~ ~ 0.25 0 0.25 0 1
    data merge entity @s {Fire:-1s}
    tag @s add T.HardStealthMove