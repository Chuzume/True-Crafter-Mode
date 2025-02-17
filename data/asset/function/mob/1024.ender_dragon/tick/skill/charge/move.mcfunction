#> asset:mob/1024.ender_dragon/tick/skill/charge/move
#
# 移動、普通には動かせないので、マーカーを出してそれに移動する
#
# @within function asset:mob/1024.ender_dragon/tick/skill/charge/


# 回転担当がプレイヤーをゆっくり狙う
    execute if score @s General.Mob.Tick matches 0..30 as @n[type=marker,tag=this] at @s facing entity @p[distance=..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-50 facing entity @s feet positioned as @s run rotate @s ~ ~
    execute if score @s General.Mob.Tick matches 30.. as @n[type=marker,tag=this] at @s facing entity @p[distance=..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-150 facing entity @s feet positioned as @s run rotate @s ~ ~-2

# 移動用マーカー召喚
    execute at @n[type=marker,tag=this] run summon marker ^ ^ ^1 {Tags:["1024.Marker.Move"]}

# 移動用マーカーを回転担当と同じ向きに変える
    execute as @n[type=marker,tag=1024.Marker.Move,distance=..16] at @s rotated as @n[type=marker,tag=this,distance=..64] run tp @s ~ ~ ~ ~ ~

# 移動用マーカーの位置に移動
    execute at @n[tag=1024.Marker.Move,distance=..64] run tp @s ~ ~ ~ ~-180 ~

# 移動用マーカーキル
    kill @n[tag=1024.Marker.Move,distance=..64]
