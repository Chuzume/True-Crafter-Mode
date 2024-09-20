#> true_crafter_mode:entity/projectile/frost_ball/tick
#
# 
#
# @within function true_crafter_mode:tick


# スコア加算
    scoreboard players add @s TMCM.Tick 1

# パーティクル
    execute at @s run particle dust{color:[0.7,1.0,1.0],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 1 10
    particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~ ~ 0.1 0.1 0.1 0 2

# ヒット判定
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @n[tag=TMCM.Target,dx=0] run function true_crafter_mode:entity/projectile/frost_ball/hit

# 飛翔
    scoreboard players set @s Chuz.Speed 10
    function true_crafter_mode:entity/motion

# 衝突チェック
    function true_crafter_mode:api/colide_check/

# 衝突してたら消える
    execute if entity @s[tag=Chuz.Colide] run function true_crafter_mode:entity/projectile/frost_ball/kill

# 消える
    execute if score @s TMCM.Tick matches 200.. run function true_crafter_mode:entity/projectile/frost_ball/kill