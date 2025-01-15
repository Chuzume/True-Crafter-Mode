#> asset:mob/1001.zombie/tick/leap/end
#
# 
#
# @within function asset:mob/1001.zombie/tick/

# 着地テスト
    tag @s remove TMCM.Leaping
    tag @s remove TMCM.CanEndLeap
    scoreboard players reset @s TMCM.Mob.FixLeapRotation

# こっち向く
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# リセット
    attribute @s minecraft:attack_knockback base set 0.0
