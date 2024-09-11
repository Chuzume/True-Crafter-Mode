
# ブロックを置く
# 設置音
    playsound minecraft:block.stone.place block @a ~ ~ ~ 1.5 1

# 内部にマーカー仕込む
    execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["TrueCrafterMode.Entity.EnemyBlock"]}

# ブロック設置
    execute align xyz run setblock ~0.5 ~0.5 ~0.5 stone
