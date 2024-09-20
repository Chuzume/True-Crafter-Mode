#> true_crafter_mode:api/collide_check/
#
# 地形に接触してモーションが0になったことを検知する
#
# @within function true_crafter_mode:**

# Posをスコア化、1tick後との差を求める
# 各軸でそれぞれ違うタグ付与

    execute unless score @s Chuz.CollideCheck.X matches -2147483648..2147483647 store result score @s Chuz.CollideCheck.X run data get entity @s Pos[0] 50
    execute unless score @s Chuz.CollideCheck.Y matches -2147483648..2147483647 store result score @s Chuz.CollideCheck.Y run data get entity @s Pos[1] 50
    execute unless score @s Chuz.CollideCheck.Z matches -2147483648..2147483647 store result score @s Chuz.CollideCheck.Z run data get entity @s Pos[2] 50

    execute store result score $Col_Temp Chuz.CollideCheck.X run data get entity @s Pos[0] 1000
    execute store result score $Col_Temp Chuz.CollideCheck.Y run data get entity @s Pos[1] 1000
    execute store result score $Col_Temp Chuz.CollideCheck.Z run data get entity @s Pos[2] 1000

    scoreboard players operation @s Chuz.CollideCheck.X -= $Col_Temp Chuz.CollideCheck.X
    scoreboard players operation @s Chuz.CollideCheck.Y -= $Col_Temp Chuz.CollideCheck.Y
    scoreboard players operation @s Chuz.CollideCheck.Z -= $Col_Temp Chuz.CollideCheck.Z

    scoreboard players operation @s Chuz.Temporary = @s Chuz.CollideCheck.X
    scoreboard players operation @s Chuz.Temporary = @s Chuz.CollideCheck.Y
    scoreboard players operation @s Chuz.Temporary = @s Chuz.CollideCheck.Z

# Chuz.No(X/Y/Z)_Checkで各軸のチェックを無効化
    execute if entity @s[tag=!Chuz.DisableCollide.X] if score @s Chuz.CollideCheck.X matches 0 run tag @s add Chuz.Collide
    execute if entity @s[tag=!Chuz.DisableCollide.Y] if score @s Chuz.CollideCheck.Y matches 0 run tag @s add Chuz.Collide
    execute if entity @s[tag=!Chuz.DisableCollide.Z] if score @s Chuz.CollideCheck.Z matches 0 run tag @s add Chuz.Collide

    scoreboard players operation @s Chuz.CollideCheck.X = $Col_Temp Chuz.CollideCheck.X
    scoreboard players operation @s Chuz.CollideCheck.Y = $Col_Temp Chuz.CollideCheck.Y
    scoreboard players operation @s Chuz.CollideCheck.Z = $Col_Temp Chuz.CollideCheck.Z
