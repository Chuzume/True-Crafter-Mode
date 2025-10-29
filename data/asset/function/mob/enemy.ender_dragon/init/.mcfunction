#> asset:mob/enemy.ender_dragon/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 無敵化
    data modify entity @s Invulnerable set value true

# フェイズ1になる
    scoreboard players set @s enemy.ender_dragon.Phase 1

# 最戦時の本島には大量のエンダーマンがいるわけなので…片付けてしまいましょう
    execute as @e[type=enderman,distance=..128] run tp @s ~ -1000 ~

# 0,128,0からサーチ処理を発動、ブロックを探して原点とする
    summon marker 0 128 0 {Tags:["enemy.ender_dragon.Marker.Origin","Init"]}
    execute as @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128] at @s run function asset:mob/enemy.ender_dragon/init/search_ground
    tag @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128] remove Init

# タグ付与
    tag @s add NoEnhance
