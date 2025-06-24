#> asset:mob/1024.ender_dragon/tick/skill/charge/
#
# なつかしの突進攻撃
#
# @within function asset:mob/1024.ender_dragon/tick/skill/branch

# 突進開始時、自分用のマーカーを出す
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1024.ender_dragon/tick/skill/charge/start

# 誘導！
#    execute if score @s General.Mob.Tick matches 0..60 on vehicle at @s facing entity @p[distance=..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-200 facing entity @s feet positioned as @s run rotate @s ~ ~
#    execute facing entity @p[distance=..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-200 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~180 ~

# ドラゴン自体を動かすとわけわからんので、下のアマスタを動かす
#    execute if score @s General.Mob.Tick matches 0..60 on vehicle at @s run tp @s ^ ^ ^1

# 自分にくっついてるマーカーにタグ付与
    tag @n[type=marker,tag=1024.Marker.Rotater] add this

# マーカーをくっつける
    execute at @s as @n[type=marker,tag=1024.Marker.Rotater] run tp @s ~ ~ ~

# 移動処理
    execute if score @s General.Mob.Tick matches 0..70 run function asset:mob/1024.ender_dragon/tick/skill/charge/move

# 解除
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/1024.ender_dragon/tick/skill/charge/end

# マーカーの識別タグをリセット
    execute on passengers on passengers run tag @s[type=marker] remove this

# デバッグ用、この処理をループ
#    execute if score @s General.Mob.Tick matches 160.. run scoreboard players set @s General.Mob.Tick -10

# リセット
    execute if score @s General.Mob.Tick matches 100.. run function asset:mob/1024.ender_dragon/tick/reset
