
# 移動
    execute at @s if block ~ ~ ~ #t.hard:no_collision unless entity @s[tag=T.Hard_GhastBulletInit] run tp ^ ^ ^0.25
    execute at @s if block ~ ~ ~ #t.hard:no_collision unless entity @s[tag=T.Hard_GhastBulletInit] run tp ^ ^ ^0.25
    execute at @s if block ~ ~ ~ #t.hard:no_collision unless entity @s[tag=T.Hard_GhastBulletInit] run tp ^ ^ ^0.25
    execute at @s if block ~ ~ ~ #t.hard:no_collision unless entity @s[tag=T.Hard_GhastBulletInit] run tp ^ ^ ^0.25

# 向き揃える
    execute if entity @s[tag=T.Hard_GhastBulletInit] run function t.hard:enemy/ghast/fireball/init

# 誘導
    execute rotated as @s positioned as @a[distance=15..100] positioned ^-100 ^ ^ positioned as @s[distance=..100] run tp @s ~ ~ ~ ~-2 ~
    execute rotated as @s positioned as @a[distance=15..100] positioned ^100 ^ ^ positioned as @s[distance=..100] run tp @s ~ ~ ~ ~2 ~
    execute rotated as @s positioned as @a[distance=15..100] positioned ^ ^-100 ^ positioned as @s[distance=..100] run tp @s ~ ~ ~ ~ ~-2
    execute rotated as @s positioned as @a[distance=15..100] positioned ^ ^100 ^ positioned as @s[distance=..100] run tp @s ~ ~ ~ ~ ~2

# 地形接触
    execute at @s unless block ~ ~ ~ #m.fireworks:no_collision positioned ^ ^ ^-1 run function t.hard:enemy/ghast/fireball/hit

# エンティティに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run function t.hard:enemy/ghast/fireball/hit

# 時間切れ
    scoreboard players add @s BulletRemain 1
    execute if entity @s[scores={BulletRemain=100..}] run function t.hard:enemy/ghast/fireball/hit

# ぱーちくる
    execute at @s run particle flame ~ ~ ~ 0 0 0 0.05 1 force @a[distance=..40]
