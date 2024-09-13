# 砂漠用
    playsound minecraft:block.basalt.place block @a ~ ~ ~ 1.5 1
    execute align xyz run setblock ~0.5 ~0.5 ~0.5 smooth_basalt
    
# 成功したことを伝える
    tag @s add TMCM.Success
    