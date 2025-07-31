#> asset:mob/enemy.wither/tick/out_off_combat/vanish
#
# 
#
# @within function asset:mob/enemy.wither/tick/out_off_combat/tick

# 演出
    particle large_smoke ~ ~2 ~ 0.7 1 0.7 0 35 force @a[distance=..32]
    particle entity_effect{color:[0.000,0.000,0.000,1.00]} ~ ~2 ~ 0.7 1 0.7 0.0 35 force @a[distance=..32]

# アイテムドロップ
    loot spawn ~ ~ ~ loot asset:mob/wither_vanished 

# 虚空へとさようなら
    tp @s ~ -100 ~
    kill @s
