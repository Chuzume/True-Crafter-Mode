#> true_crafter_mode:entity/projectile/frost_ball/tick
#
# 
#
# @within function true_crafter_mode:tick

# 持ち主にタグを付与
    execute on passengers if entity @s[type=area_effect_cloud] on origin run tag @s add This

# スコア加算
    scoreboard players add @s TMCM.Tick 1

# パーティクル
    execute at @s run particle dust{color:[0.7,1.0,1.0],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 1 10
    particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~ ~ 0.1 0.1 0.1 0 2

# 誘導
    # 頭上のItem_displayにでもやらせるかね
        #execute on passengers if entity @s[type=item_display] facing entity @p feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-3 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    # AECの向きになる
        #execute on passengers if entity @s[type=item_display] run tag @s add This
        #data modify entity @s Rotation set from entity @n[type=item_display,tag=This] Rotation
        #execute on passengers if entity @s[type=item_display] run tag @s remove This

# ヒット判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!armor_stand,type=!item_display,team=!null,dx=0] run function true_crafter_mode:entity/projectile/frost_ball/hit/

# 飛翔
    #scoreboard players set @s Chuz.Speed 10
    #function true_crafter_mode:entity/motion

# 衝突チェック
    execute if entity @s[tag=Chuz.MotionChecked] run function true_crafter_mode:api/collide_check/

# 衝突してたら消える
    execute if entity @s[tag=Chuz.Collide] run say ぶつかった！
    execute if entity @s[tag=Chuz.Collide] run function true_crafter_mode:entity/projectile/frost_ball/kill

# 消える
    execute if score @s TMCM.Tick matches 200.. run function true_crafter_mode:entity/projectile/frost_ball/kill

# 持ち主のタグを解除
    execute on passengers if entity @s[type=area_effect_cloud] on origin run tag @s remove This
    