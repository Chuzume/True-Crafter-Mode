#> true_crafter_mode:entity/mob/common_moveset/place_block/
#
# ブロックを置いて追いかける処理
#
# @within function true_crafter_mode:entity/mob/**

# 自身と対象のY座標の差を取得
    execute if entity @n[tag=TMCM.Target,distance=..32] store result score @s TMCM.PosCheck.Y run data get entity @s Pos[1] 1
    execute as @n[tag=TMCM.Target,distance=..32] store result score @s TMCM.PosCheck.Y run data get entity @s Pos[1] 1
    scoreboard players operation @s TMCM.PosCheck.Y -= @n[tag=TMCM.Target,distance=..32] TMCM.PosCheck.Y

# 差がマイナス、つまり自身の座標が対象より低く、かつ自分が止まっているなら
    execute if score @s[tag=ChuzStandstill] TMCM.PosCheck.Y matches ..-2 unless score @s TMCM.BlockPlace matches 0.. if block ~ ~ ~ #true_crafter_mode:can_place anchored eyes rotated ~ 0 if block ^ ^1 ^ #true_crafter_mode:no_collision_safe run function true_crafter_mode:entity/mob/common_moveset/place_block/jump
    execute if score @s TMCM.BlockPlace matches 0.. if block ~ ~-1 ~ #true_crafter_mode:can_place positioned ~ ~-1 ~ run function true_crafter_mode:entity/mob/common_moveset/place_block/place

# クールタイム消費
    scoreboard players remove @s[scores={TMCM.BlockPlace=0..}] TMCM.BlockPlace 1 
    scoreboard players reset @s[scores={TMCM.BlockPlace=..0}] TMCM.BlockPlace

# 水平方向に設置
    execute if entity @s[scores={TMCM.PosCheck.Y=0},tag=ChuzOnGround] rotated ~ 0 if block ^ ^-1 ^1 #true_crafter_mode:can_place if block ~ ~-2 ~ #true_crafter_mode:can_place positioned ^ ^-1 ^1 run function true_crafter_mode:entity/mob/common_moveset/place_block/place
