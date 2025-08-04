#> asset:mob/enemy.ender_dragon/tick/skill/charge/move
#
# 移動、普通には動かせないので、マーカーを出してそれに移動する
#
# @within function asset:mob/enemy.ender_dragon/tick/skill/charge/


# 回転担当がプレイヤーをゆっくり狙う
    execute if score @s General.Mob.Tick matches 0..39 as @n[type=marker,tag=this] at @s facing entity @p[distance=..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-70 facing entity @s feet positioned as @s run rotate @s ~ ~1
    execute if score @s General.Mob.Tick matches 40.. as @n[type=marker,tag=this] at @s facing entity @p[distance=..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-150 facing entity @s feet positioned as @s run rotate @s ~ ~-1

# 移動用マーカー召喚
    execute at @n[type=marker,tag=this] run summon marker ^ ^ ^0.5 {Tags:["enemy.ender_dragon.Marker.Move"]}

# 移動用マーカーを回転担当と同じ向きに変える
    execute as @n[type=marker,tag=enemy.ender_dragon.Marker.Move,distance=..16] at @s rotated as @n[type=marker,tag=this,distance=..48] run tp @s ~ ~ ~ ~ ~

# 移動用マーカーの位置に移動
    execute at @n[tag=enemy.ender_dragon.Marker.Move,distance=..48] run tp @s ~ ~ ~ ~-180 ~

# 移動用マーカーキル
    kill @n[tag=enemy.ender_dragon.Marker.Move,distance=..48]
