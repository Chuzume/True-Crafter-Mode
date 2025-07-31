#> asset:mob/enemy.ender_dragon/tick/death
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/

# マーカーを片付ける
    kill @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128]

# 付近のエンダージーロットを消す
    kill @e[type=slime,tag=Mob.enemy.ender_zealot,distance=..128]

# リセット
    function asset:mob/enemy.ender_dragon/tick/reset

# もう行動できないようにスコアをめちゃくちゃ下げる
    scoreboard players set @s General.Mob.Tick -9999999

# タグ付与、これ以降はこの処理をやらない
    tag @s add enemy.ender_dragon.Death
