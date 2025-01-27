#> asset:object/2000.sheath/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2000/tick

# 自分の持ち主にタグ付与
    execute on vehicle run tag @s add TMCM.SheathOwner

# 持ち主と同じ向きになる
    execute rotated as @n[tag=TMCM.SheathOwner] run tp @s ~ ~ ~ ~ 0

# 持ち主がいないと分かったら消える
    execute unless entity @n[tag=TMCM.SheathOwner] run kill @s

# 持ち主からタグを奪う
    tag @n[tag=SheathOwner] remove TMCM.SheathOwner

# 誰にも乗ってなかったら消える
    execute unless predicate true_crafter_mode:on_vehicle run kill @s
