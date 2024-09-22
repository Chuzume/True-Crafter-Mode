#> true_crafter_mode:entity/mob/common_moveset/place_block/
#
# ブロックを積み上げる処理
#
# @within function true_crafter_mode:entity/mob/**

# 自身と対象のY座標の差を取得
    execute if entity @p store result score @s TMCM.PosCheck.Y run data get entity @s Pos[1] 1
    execute as @p store result score @s TMCM.PosCheck.Y run data get entity @s Pos[1] 1
    scoreboard players operation @s TMCM.PosCheck.Y -= @p TMCM.PosCheck.Y

# 差がマイナス、つまり自身の座標が対象より低く、かつ自分が止まっているなら
    execute if score @s TMCM.PosCheck.Y matches ..-2 unless score @s TMCM.BlockPlace matches 0.. if block ~ ~ ~ #true_crafter_mode:can_place anchored eyes rotated ~ 0 if block ^ ^1 ^ #true_crafter_mode:no_collision_safe run function true_crafter_mode:entity/mob/common_moveset/place_block/jump
    execute if score @s TMCM.BlockPlace matches 0.. if block ~ ~-1 ~ #true_crafter_mode:can_place positioned ~ ~-1 ~ run function true_crafter_mode:entity/mob/common_moveset/place_block/place

# 差が-1..0、つまり大体同じ高さなら
    execute if entity @s[tag=!TMCM.Action.Bridge,scores={TMCM.PosCheck.Y=-1..0},tag=ChuzOnGround] run function true_crafter_mode:entity/mob/common_moveset/place_block/bridge/start

# クールタイム消費
    scoreboard players remove @s[scores={TMCM.BlockPlace=0..}] TMCM.BlockPlace 1 
    scoreboard players reset @s[scores={TMCM.BlockPlace=..0}] TMCM.BlockPlace
