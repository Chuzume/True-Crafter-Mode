#> asset:mob/1025.wither/tick/phase_transition/
#
# 下っ端召喚フェイズ
#
# @within function asset:mob/1025.wither/tick/

# スコア加算
    scoreboard players add @s General.Mob.Tick 1

# もくもく
    execute if score @s General.Mob.Tick matches ..60 run function asset:mob/1025.wither/tick/phase_transition/windup_vfx

# 召喚
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/1025.wither/tick/phase_transition/summon_minion/
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/1025.wither/tick/phase_transition/summon_minion/
    execute if score @s General.Mob.Tick matches 90 run function asset:mob/1025.wither/tick/phase_transition/summon_minion/

# 下っ端から自分にパーティクル
    summon marker ~ ~2 ~ {Tags:["1025.Marker.Temp"]} 
    data modify storage asset:temp Pos set from entity @n[type=marker,tag=1025.Marker.Temp,distance=..8] Pos
    function asset:mob/1025.wither/tick/phase_transition/particle with storage asset:temp
    kill @n[type=marker,tag=1025.Marker.Temp,distance=..8]
    data remove storage asset:temp Pos

# 付近の下っ端がいなくなったら行動を再開
    execute if score @s General.Mob.Tick matches 90..839 unless entity @e[type=wither_skeleton,distance=..64,scores={MobID=1027}] run function asset:mob/1025.wither/tick/phase_transition/minion_cleared

# あんまり時間をかけると下っ端そのままにして動き出す
    execute if score @s General.Mob.Tick matches 900 run function asset:mob/1025.wither/tick/phase_transition/restart
