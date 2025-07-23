#> asset:object/gimmick.enemy_block/init/block/basalt_deltas
#
# 
#
# @within function asset:object/gimmick.enemy_block/init/

# 設置
    playsound minecraft:block.basalt.place block @a ~ ~ ~ 1.0 1
    execute align xyz run setblock ~0.5 ~0.5 ~0.5 smooth_basalt

# 成功したことを伝える
    tag @s add gimmick.enemy_block.Success
    