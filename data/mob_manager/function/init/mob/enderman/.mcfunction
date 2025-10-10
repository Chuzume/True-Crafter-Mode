#> mob_manager:init/mob/enderman/
#
# 
#
# @within function mob_manager:init/

# エンド以外。能動的に追いかけてくるタイプ。
    execute unless dimension minecraft:the_end run data modify storage api: Argument.ID set value "enemy.enderman"

# ドラゴンが周囲にいるとかなり弱い個体になる
    execute if entity @n[type=ender_dragon,distance=..128] run data modify storage api: Argument.ID set value "enemy.enderman_weak"

# エンドにてドラゴンがいない場合
    execute if dimension minecraft:the_end unless entity @n[type=ender_dragon,distance=..128] run function mob_manager:init/mob/enderman/in_the_end

# エンド本島周辺にて、ドラゴンがいないときは強くないけど弱くもない奴…つまり普通のエンダーマンになる
#    execute if dimension minecraft:the_end positioned 0 0 0 if entity @s[distance=..128] unless entity @n[type=ender_dragon,distance=..128] run data modify storage api: Argument.ID set value "enemy.enderman_neutral"

# エンド外縁部にて
#    execute if dimension minecraft:the_end positioned 0 0 0 unless entity @s[distance=..128] run function mob_manager:init/mob/enderman/in_the_end
