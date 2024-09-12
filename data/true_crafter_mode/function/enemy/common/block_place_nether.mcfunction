
# 自身と付近のプレイヤーのY座標の差を取得
    execute if entity @a[distance=..16,tag=!TrueCrafterMode.Exception] store result score @s TrueCrafterMode.PosCheck.Y run data get entity @s Pos[1] 1
    execute as @a[distance=..16] store result score @s TrueCrafterMode.PosCheck.Y run data get entity @s Pos[1] 1
    scoreboard players operation @s TrueCrafterMode.PosCheck.Y -= @p[distance=..16,tag=!TrueCrafterMode.Exception] TrueCrafterMode.PosCheck.Y

# Y座標がプレイヤーのほうが高く、自分が止まっているならブロック設置
    scoreboard players add @s[scores={T.HardPlace=0..}] T.HardPlace 1
    execute if entity @s[scores={TrueCrafterMode.PosCheck.Y=..-1},tag=ChuzOnGround,tag=ChuzStandstill] rotated ~ 0 if block ~ ~ ~ #true_crafter_mode:can_place unless block ~ ~2 ~ #true_crafter_mode:no_dig run function true_crafter_mode:enemy/block/place_down
    execute if entity @s[scores={T.HardPlace=0..}] if block ~ ~-1 ~ #true_crafter_mode:can_place positioned ~ ~-1 ~ run function true_crafter_mode:enemy/block/nether/place
    scoreboard players reset @s[scores={T.HardPlace=5..}] T.HardPlace

# 水平方向に設置
    execute if entity @s[scores={TrueCrafterMode.PosCheck.Y=0},tag=ChuzOnGround] positioned ^ ^ ^1 rotated ~ 0 if block ~ ~-1 ~ #true_crafter_mode:can_place if block ~ ~-2 ~ #true_crafter_mode:can_place positioned ^ ^-1 ^ run function true_crafter_mode:enemy/block/nether/place
