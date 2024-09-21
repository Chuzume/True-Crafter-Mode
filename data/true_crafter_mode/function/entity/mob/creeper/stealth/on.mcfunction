
# 透明化開始時の演出
    execute if entity @s[tag=!TMCM.Creeper.Stealth] run particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 25 force @a[distance=..40]

# 透明化中
    effect give @s minecraft:invisibility 1 0
    particle smoke ~ ~ ~ 0.25 0 0.25 0 1 force @a[distance=..20]
    data modify entity @s Fire set value -1s
    tag @s add TMCM.Creeper.Stealth
    