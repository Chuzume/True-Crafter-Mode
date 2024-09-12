# モブが腰に付けてるアイテムの処理

# 自分の持ち主にタグ付与
    execute on vehicle run tag @s add This

# 持ち主と同じ向きになる
    execute rotated as @n[tag=This] run tp @s ~ ~ ~ ~ 0

# 持ち主からタグを奪う
    tag @n[tag=This] remove This

# 誰にも乗ってなかったら消える
    execute unless predicate true_crafter_mode:on_vehicle run kill @s