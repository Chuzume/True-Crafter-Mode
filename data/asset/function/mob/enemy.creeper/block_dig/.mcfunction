#> asset:mob/enemy.creeper/block_dig/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.block_dig

# 条件によって爆発で採掘するかどうかが変わる
    # 付近にプレイヤーがいて、かつ縦軸が近いようなら壁を爆破
        execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..16] positioned ~-16 ~-2 ~-16 if entity @p[tag=!PlayerShouldInvulnerable,dx=31,dy=4,dz=31] at @s run function asset:mob/enemy.creeper/block_dig/explosion
    # 上のに失敗しているようなら
        execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..48] unless score $Success Temporary matches 1.. run function asset:mob/enemy.creeper/block_dig/dig

# リセット
    scoreboard players reset $Success Temporary
