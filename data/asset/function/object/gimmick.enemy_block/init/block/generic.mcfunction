#> asset:object/gimmick.enemy_block/init/block/generic
#
# 
#
# @within function asset:object/gimmick.enemy_block/init/

# 設置
    playsound minecraft:block.stone.place block @a ~ ~ ~ 1.5 1
    execute align xyz run setblock ~0.5 ~0.5 ~0.5 mossy_cobblestone

# 成功したことを伝える
    tag @s add gimmick.enemy_block.Success
    