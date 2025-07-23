#> asset:object/gimmick.enemy_block/init/block/crimson_forest
#
# 
#
# @within function asset:object/gimmick.enemy_block/init/

# 設置
    playsound minecraft:block.stem.place block @a ~ ~ ~ 1.0 0.8
    execute align xyz run setblock ~0.5 ~0.5 ~0.5 crimson_hyphae

# 成功したことを伝える
    tag @s add gimmick.enemy_block.Success
    