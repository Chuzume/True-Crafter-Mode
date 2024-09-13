#> true_crafter_mode:entity/mob/zombie/leap_attack/end
#
# 着地してリセットする処理
#
# @within function true_crafter_mode:entity/mob/zombie/tick

# 着地テスト
    tag @s remove TrueCrafterMode.Leaping
    tag @s remove TrueCrafterMode.CanEndLeap
    scoreboard players reset @s TrueCrafterMode.Mob.FixLeapRotation

# こっち向く
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# リセット
    attribute @s minecraft:generic.attack_knockback base set 1