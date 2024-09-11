# 砂漠用
    playsound minecraft:block.stone.place block @a ~ ~ ~ 1.5 1
    execute align xyz run setblock ~0.5 ~0.5 ~0.5 smooth_sandstone

# 成功したことを伝える
    tag @s add TrueCrafterMode.Success
    