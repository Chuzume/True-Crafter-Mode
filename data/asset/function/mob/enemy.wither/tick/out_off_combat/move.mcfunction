#> asset:mob/enemy.wither/tick/out_off_combat/move
#
# フェイルセーフ的移動
#
# @within function asset:mob/enemy.wither/tick/out_off_combat/tick

# 移動
    execute on vehicle facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^0.1 ~ ~
# 本体の向き変更
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~
