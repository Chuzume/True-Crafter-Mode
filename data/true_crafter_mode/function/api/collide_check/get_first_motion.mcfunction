#> true_crafter_mode:api/collide_check/get_first_motion
#
# 水平に放った時などは例外とするために、最初のMotionを取得して例外を作る
#
# @within function true_crafter_mode:**

# 初期Motion0だったらタグ付与
    execute store result score @s Chuz.FirstMotion.X run data get entity @s Motion[0] 1000
    execute if score @s Chuz.FirstMotion.X matches -5..5 run tag @s add Chuz.Disablecollide.X

    execute store result score @s Chuz.FirstMotion.Y run data get entity @s Motion[1] 1000
    execute if score @s Chuz.FirstMotion.Y matches 0 run tag @s add Chuz.Disablecollide.Y

    execute store result score @s Chuz.FirstMotion.Z run data get entity @s Motion[2] 1000
    execute if score @s Chuz.FirstMotion.Z matches -5..5 run tag @s add Chuz.Disablecollide.Z

    tag @s[tag=!Chuz.MotionChecked] add Chuz.MotionChecked