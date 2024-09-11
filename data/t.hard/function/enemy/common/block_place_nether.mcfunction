
# 自身と付近のプレイヤーのY座標の差を取得
    execute if entity @a[distance=..16,tag=!t.hardException] store result score @s t.hardY_Check run data get entity @s Pos[1] 1
    execute as @a[distance=..16] store result score @s t.hardY_Check run data get entity @s Pos[1] 1
    scoreboard players operation @s t.hardY_Check -= @p[distance=..16,tag=!t.hardException] t.hardY_Check

# Y座標がプレイヤーのほうが高く、自分が止まっているならブロック設置
    scoreboard players add @s[scores={t.hardPlace=0..}] t.hardPlace 1
    execute if entity @s[scores={t.hardY_Check=..-1},tag=ChuzOnGround,tag=ChuzStandstill] rotated ~ 0 if block ~ ~ ~ #t.hard:can_place unless block ~ ~2 ~ #t.hard:no_dig run function t.hard:enemy/block/place_down
    execute if entity @s[scores={t.hardPlace=0..}] if block ~ ~-1 ~ #t.hard:can_place positioned ~ ~-1 ~ run function t.hard:enemy/block/nether/place
    scoreboard players reset @s[scores={t.hardPlace=5..}] t.hardPlace

# 水平方向に設置
    execute if entity @s[scores={t.hardY_Check=0},tag=ChuzOnGround] positioned ^ ^ ^1 rotated ~ 0 if block ~ ~-1 ~ #t.hard:can_place if block ~ ~-2 ~ #t.hard:can_place positioned ^ ^-1 ^ run function t.hard:enemy/block/nether/place
