#> asset:mob/enemy.creeper/tick/stealth/active
#
# 
#
# @within function asset:mob/enemy.creeper/tick/

# 透明化開始時の演出
    execute if entity @s[tag=!enemy.creeper.Stealth] run particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 25 force @a[distance=..40]

# 透明化中
    effect give @s minecraft:invisibility 1 0
    particle smoke ~ ~ ~ 0.25 0 0.25 0 1 force @a[distance=..16]
    data modify entity @s Fire set value -1s
    tag @s add enemy.creeper.Stealth
    