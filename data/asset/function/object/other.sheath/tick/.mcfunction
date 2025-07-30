#> asset:object/other.sheath/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2000/tick

# 自分の持ち主にタグ付与
    execute on vehicle run tag @s add other.sheath.SheathOwner

# 持ち主と同じ向きになる
    execute rotated as @n[tag=other.sheath.SheathOwner] run rotate @s ~ 0

# 持ち主がいないと分かったら消える
    execute on vehicle at @s on passengers if entity @s[tag=Object.other.sheath] unless entity @n[tag=other.sheath.SheathOwner,distance=..0.5] run kill @s

# 持ち主からタグを奪う
    execute on vehicle run tag @s remove other.sheath.SheathOwner

# 誰にも乗ってなかったら消える
    execute unless predicate lib:is_vehicle run kill @s
