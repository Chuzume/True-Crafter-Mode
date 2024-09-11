
# 移動
    execute at @s if block ~ ~ ~ #t.hard:no_collision run tp ^ ^ ^0.26
    execute at @s if block ~ ~ ~ #t.hard:no_collision run tp ^ ^ ^0.26
    execute at @s if block ~ ~ ~ #t.hard:no_collision run tp ^ ^ ^0.26
    execute at @s if block ~ ~ ~ #t.hard:no_collision run tp ^ ^ ^0.26

# 誘導
    execute rotated as @s positioned as @a[distance=..100] positioned ^-100 ^ ^ positioned as @s[distance=..100] run tp @s ~ ~ ~ ~-1 ~
    execute rotated as @s positioned as @a[distance=..100] positioned ^100 ^ ^ positioned as @s[distance=..100] run tp @s ~ ~ ~ ~1 ~
    execute rotated as @s positioned as @a[distance=..100] positioned ^ ^-100 ^ positioned as @s[distance=..100] run tp @s ~ ~ ~ ~ ~-1
    execute rotated as @s positioned as @a[distance=..100] positioned ^ ^100 ^ positioned as @s[distance=..100] run tp @s ~ ~ ~ ~ ~1

# 地形接触
    execute at @s unless block ~ ~ ~ #t.hard:no_collision positioned ^ ^ ^-1 run function t.hard:enemy/blaze/fireball/hit

# エンティティに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run function t.hard:enemy/blaze/fireball/hit

# 時間切れ
    scoreboard players add @s BulletRemain 1
    execute if entity @s[scores={BulletRemain=100..}] run kill @s

# ぱーちくる
    execute at @s run particle flame ~ ~1 ~ 0 0 0 0 1 force @a[distance=..40]
    execute at @s run particle large_smoke ~ ~1 ~ 0 0 0 0 1 force @a[distance=..40]
