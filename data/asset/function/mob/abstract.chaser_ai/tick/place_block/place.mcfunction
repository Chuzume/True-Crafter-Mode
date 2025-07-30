#> asset:mob/abstract.chaser_ai/tick/place_block/place
#
# 
#
# @within function asset:mob/abstract.chaser_ai/tick/place_block/

# 自身と対象のY座標の差を取得
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..64] store result score @s abstract.chaser_ai.PosCheckY run data get entity @s Pos[1] 1
    execute store result score $EnemyPosY Temporary run data get entity @p[tag=!PlayerShouldInvulnerable,distance=..64] Pos[1] 1
    scoreboard players operation @s abstract.chaser_ai.PosCheckY -= $EnemyPosY Temporary

# 差がマイナス、つまり自身の座標が対象より低く、かつ自分が止まっているなら
    execute if score @s abstract.chaser_ai.PosCheckY matches ..2 unless score @s abstract.chaser_ai.PlaceCoolTime matches 0.. if block ~ ~ ~ #lib:can_place anchored eyes rotated ~ 0 if block ^ ^1 ^ #lib:no_collision_safe run function asset:mob/abstract.chaser_ai/tick/place_block/jump
    execute if score @s abstract.chaser_ai.PlaceCoolTime matches 0.. if block ~ ~-1 ~ #lib:can_place positioned ~ ~-1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function api:object/summon.m {ID:"gimmick.enemy_block"}

# 大体同じ高さなら
    execute if entity @s[tag=!abstract.chaser_ai.Bridge,scores={abstract.chaser_ai.PosCheckY=0},tag=OnGround] run function asset:mob/abstract.chaser_ai/tick/place_block/place_bridge/start

# クールタイム消費
    scoreboard players remove @s[scores={abstract.chaser_ai.PlaceCoolTime=0..}] abstract.chaser_ai.PlaceCoolTime 1 
    scoreboard players reset @s[scores={abstract.chaser_ai.PlaceCoolTime=..0}] abstract.chaser_ai.PlaceCoolTime

# リセット
    #scoreboard players reset @s abstract.chaser_ai.PosCheckY
    scoreboard players reset $EnemyPosY Temporary
