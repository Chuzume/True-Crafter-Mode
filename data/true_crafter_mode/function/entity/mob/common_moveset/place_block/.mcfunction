
# 自身と付近のプレイヤーのY座標の差を取得
    execute if entity @a[distance=..16,tag=!TMCM.Exception] store result score @s TMCM.PosCheck.Y run data get entity @s Pos[1] 1
    execute as @a[distance=..16] store result score @s TMCM.PosCheck.Y run data get entity @s Pos[1] 1
    scoreboard players operation @s TMCM.PosCheck.Y -= @p[distance=..16,tag=!TMCM.Exception] TMCM.PosCheck.Y

# Y座標がプレイヤーのほうが高く、自分が止まっているならブロック設置
    scoreboard players add @s TMCM.BlockPlace 1
    execute if entity @s[scores={TMCM.PosCheck.Y=..-1},tag=ChuzOnGround,tag=ChuzStandstill] rotated ~ 0 if block ~ ~ ~ #true_crafter_mode:can_place unless block ~ ~2 ~ #true_crafter_mode:no_dig run function true_crafter_mode:entity/mob/common_moveset/place_block/jump
    execute if entity @s[scores={TMCM.BlockPlace=0..}] if block ~ ~-1 ~ #true_crafter_mode:can_place positioned ~ ~-1 ~ run function true_crafter_mode:entity/mob/common_moveset/place_block/place
    scoreboard players reset @s[scores={TMCM.BlockPlace=5..}] TMCM.BlockPlace

# 水平方向に設置
    execute if entity @s[scores={TMCM.PosCheck.Y=0},tag=ChuzOnGround] positioned ^ ^ ^1 rotated ~ 0 if block ~ ~-1 ~ #true_crafter_mode:can_place if block ~ ~-2 ~ #true_crafter_mode:can_place positioned ^ ^-1 ^ run function true_crafter_mode:entity/mob/common_moveset/place_block/place
