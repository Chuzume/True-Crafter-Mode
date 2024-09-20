#> true_crafter_mode:api/colide_check/
#
# 地形に接触してモーションが0になったことを検知する
#
# @within function true_crafter_mode:**

# Posをスコア化、1tick後との差を求める
# 各軸でそれぞれ違うタグ付与

    execute unless score @s Chuz.ColideCheck.X matches -2147483648..2147483647 store result score @s Chuz.ColideCheck.X run data get entity @s Pos[0] 50
    execute unless score @s Chuz.ColideCheck.Y matches -2147483648..2147483647 store result score @s Chuz.ColideCheck.Y run data get entity @s Pos[1] 50
    execute unless score @s Chuz.ColideCheck.Z matches -2147483648..2147483647 store result score @s Chuz.ColideCheck.Z run data get entity @s Pos[2] 50

    execute store result score $Col_Temp Chuz.ColideCheck.X run data get entity @s Pos[0] 1000
    execute store result score $Col_Temp Chuz.ColideCheck.Y run data get entity @s Pos[1] 1000
    execute store result score $Col_Temp Chuz.ColideCheck.Z run data get entity @s Pos[2] 1000

    scoreboard players operation @s Chuz.ColideCheck.X -= $Col_Temp Chuz.ColideCheck.X
    scoreboard players operation @s Chuz.ColideCheck.Y -= $Col_Temp Chuz.ColideCheck.Y
    scoreboard players operation @s Chuz.ColideCheck.Z -= $Col_Temp Chuz.ColideCheck.Z

    scoreboard players operation @s Chuz.ColideCheck.Temp = @s Chuz.ColideCheck.X
    scoreboard players operation @s Chuz.ColideCheck.Temp = @s Chuz.ColideCheck.Y
    scoreboard players operation @s Chuz.ColideCheck.Temp = @s Chuz.ColideCheck.Z

# Chuz.No(X/Y/Z)_Checkで各軸のチェックを無効化
    execute if entity @s[tag=!Chuz.NoX_Check] if score @s Chuz.ColideCheck.X matches 0 run tag @s add Col_Hit_X
    execute if entity @s[tag=!Chuz.NoY_Check] if score @s Chuz.ColideCheck.Y matches 0 run tag @s add Col_Hit_Y
    execute if entity @s[tag=!Chuz.NoZ_Check] if score @s Chuz.ColideCheck.Z matches 0 run tag @s add Col_Hit_Z

    scoreboard players operation @s Chuz.ColideCheck.X = $Col_Temp Chuz.ColideCheck.X
    scoreboard players operation @s Chuz.ColideCheck.Y = $Col_Temp Chuz.ColideCheck.Y
    scoreboard players operation @s Chuz.ColideCheck.Z = $Col_Temp Chuz.ColideCheck.Z
