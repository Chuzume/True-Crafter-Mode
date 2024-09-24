#> asset:mob/1011.creeper/tick/stealth/deactive
#
# 透明化を解除する
#
# @within function asset:mob/1011.creeper/tick/

# ステルス解除して姿を現す
    effect clear @s minecraft:invisibility
    particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 25
    tag @s remove 1011.Stealth
