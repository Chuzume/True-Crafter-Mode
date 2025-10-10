#> asset:mob/enemy.ender_dragon/tick/phase_2/summon_minion/
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/phase_2/tick


# ミニオン数をカウント
    execute store result score $MinionCount Temporary run execute if entity @e[type=item_display,tag=Object.enemy_part.ender_zealot_eye,distance=..128]

# カウント数が一定以下であれば実行
    execute if score $MinionCount Temporary matches ..3 at @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128] positioned ~ ~28 ~ run function asset:mob/enemy.ender_dragon/tick/phase_2/summon_minion/active

# リセット
    scoreboard players reset $MinionCount Temporary
