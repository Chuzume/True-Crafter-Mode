#> true_crafter_mode:entity/mob/common_moveset/place_block/jump
#
# 真下置きのために跳ぶ
#
# @within function true_crafter_mode:entity/mob/common_moveset/place_block/

# ジャンプしてその場に設置
    scoreboard players set @s TrueCrafterMode.BlockPlace 0
    data modify entity @s Motion[1] set value 0.5