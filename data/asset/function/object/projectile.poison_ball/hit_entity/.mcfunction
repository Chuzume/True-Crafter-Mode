#> asset:object/projectile.poison_ball/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1002/hit_entity

# 接触したプレイヤーにデバフ
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run function asset:object/projectile.poison_ball/hit_entity/damage

# 自滅
    kill @s
