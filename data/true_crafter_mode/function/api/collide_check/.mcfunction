#> true_crafter_mode:api/collide_check/
#
# 地形に接触してモーションが0になったことを検知する
#
# @within function true_crafter_mode:**

# Posをスコア化、1tick後との差を求める
# 各軸でそれぞれ違うタグ付与

    execute unless score @s Chuz.collideCheck.X matches -2147483648..2147483647 store result score @s Chuz.collideCheck.X run data get entity @s Pos[0] 50
    execute unless score @s Chuz.collideCheck.Y matches -2147483648..2147483647 store result score @s Chuz.collideCheck.Y run data get entity @s Pos[1] 50
    execute unless score @s Chuz.collideCheck.Z matches -2147483648..2147483647 store result score @s Chuz.collideCheck.Z run data get entity @s Pos[2] 50

    execute store result score $Col_Temp Chuz.collideCheck.X run data get entity @s Pos[0] 1000
    execute store result score $Col_Temp Chuz.collideCheck.Y run data get entity @s Pos[1] 1000
    execute store result score $Col_Temp Chuz.collideCheck.Z run data get entity @s Pos[2] 1000

    scoreboard players operation @s Chuz.collideCheck.X -= $Col_Temp Chuz.collideCheck.X
    scoreboard players operation @s Chuz.collideCheck.Y -= $Col_Temp Chuz.collideCheck.Y
    scoreboard players operation @s Chuz.collideCheck.Z -= $Col_Temp Chuz.collideCheck.Z

    scoreboard players operation @s Chuz.Temporary = @s Chuz.collideCheck.X
    scoreboard players operation @s Chuz.Temporary = @s Chuz.collideCheck.Y
    scoreboard players operation @s Chuz.Temporary = @s Chuz.collideCheck.Z

# Chuz.No(X/Y/Z)_Checkで各軸のチェックを無効化
    execute if entity @s[tag=!Chuz.Disablecollide.X] if score @s Chuz.collideCheck.X matches 0 run tag @s add Chuz.collide
    execute if entity @s[tag=!Chuz.Disablecollide.Y] if score @s Chuz.collideCheck.Y matches 0 run tag @s add Chuz.collide
    execute if entity @s[tag=!Chuz.Disablecollide.Z] if score @s Chuz.collideCheck.Z matches 0 run tag @s add Chuz.collide

    scoreboard players operation @s Chuz.collideCheck.X = $Col_Temp Chuz.collideCheck.X
    scoreboard players operation @s Chuz.collideCheck.Y = $Col_Temp Chuz.collideCheck.Y
    scoreboard players operation @s Chuz.collideCheck.Z = $Col_Temp Chuz.collideCheck.Z
