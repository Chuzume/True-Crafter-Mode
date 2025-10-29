#> asset:object/projectile.brute_shockwave/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 対象をなんとなく追尾
    execute facing entity @n[type=#lib:enemy_of_piglin,tag=!PlayerShouldInvulnerable,distance=..48] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0

# 移動
    tp @s ^ ^ ^0.5

# 降りる
    execute if block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~-1 ~

# 登る
    execute unless block ~ ~ ~ #lib:no_collision run tp @s ~ ~1 ~


# パーティクル
    particle minecraft:crit ~ ~ ~ 0.2 0.1 0.2 0.05 5 force @a[distance=..48]
    particle minecraft:electric_spark ~ ~ ~ 0.2 0.1 0.2 0.05 10 force @a[distance=..48]

# 一定間隔で爆発
    # 実行時間を移す
        scoreboard players operation $Interval Temporary = @s General.Object.Tick
    # 数tickごとに攻撃判定が発生
        scoreboard players operation $Interval Temporary %= $4 Const
        execute if score $Interval Temporary matches 0 run function asset:object/projectile.brute_shockwave/tick/explosion.m with storage asset:context this
    # リセット
        scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=40..}]
