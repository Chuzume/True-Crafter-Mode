#> asset:mob/enemy.ender_dragon/tick/phase_2/tick
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/

# 下っ端から自分にパーティクル
    summon marker ~ ~2 ~ {Tags:["enemy.ender_dragon.Marker.Temp"]} 
    data modify storage asset:temp Pos set from entity @n[type=marker,tag=enemy.ender_dragon.Marker.Temp,distance=..8] Pos
    function asset:mob/enemy.ender_dragon/tick/phase_2/particle with storage asset:temp
    kill @n[type=marker,tag=enemy.ender_dragon.Marker.Temp,distance=..8]
    data remove storage asset:temp Pos

# 時々下っ端を召喚する
    scoreboard players add @s enemy.ender_dragon.Tick.Minion 1
    execute if score @s enemy.ender_dragon.Tick.Minion matches 40 run function asset:mob/enemy.ender_dragon/tick/phase_2/summon_minion/
    execute if score @s enemy.ender_dragon.Tick.Minion matches 80 run function asset:mob/enemy.ender_dragon/tick/phase_2/summon_minion/
    execute if score @s enemy.ender_dragon.Tick.Minion matches 120 run function asset:mob/enemy.ender_dragon/tick/phase_2/summon_minion/
    execute if score @s enemy.ender_dragon.Tick.Minion matches 160 run function asset:mob/enemy.ender_dragon/tick/phase_2/summon_minion/

# リセット
    execute if score @s enemy.ender_dragon.Tick.Minion matches 240 run scoreboard players reset @s enemy.ender_dragon.Tick.Minion 
