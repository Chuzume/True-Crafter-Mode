#> asset:mob/enemy.creeper/block_dig/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.block_dig

# 付近にプレイヤーがいるかいないかでどっちを使うかが変わる
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..16] run function asset:mob/enemy.creeper/block_dig/explosion
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=16.1..64] run function asset:mob/enemy.creeper/block_dig/dig
