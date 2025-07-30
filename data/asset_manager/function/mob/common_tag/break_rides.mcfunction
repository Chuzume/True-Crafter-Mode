#> asset_manager:mob/common_tag/break_rides
#
# 乗ったボートやトロッコを粉砕する。アイテムは返してやらん。
#
# @within function asset_manager:mob/common_tag/

# サウンド
    playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1 0.8

# パーティクル
    particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 1 10
    particle minecraft:poof ~ ~ ~ 0.2 0.2 0.2 0.1 20

# プレイヤーが置ける乗り物を破壊
    kill @e[type=#lib:placeable_vehicles,distance=..1,sort=nearest,limit=1]
