#> asset:object/projectile.spider_web/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1001/hit_entity

# 接触したプレイヤーにデバフ
    execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:slowness 2 3
    execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:mining_fatigue 2 5
