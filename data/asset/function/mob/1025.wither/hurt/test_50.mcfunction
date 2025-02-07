#> asset:mob/1025.wither/hurt/test_50
#
# テスト用、ヘルス50まで削った扱いにする
#
# @within function asset:mob/1025.wither/hurt/health_75

execute as @e[type=wither,scores={MobID=1025}] at @s run function asset:mob/1025.wither/hurt/health_50
