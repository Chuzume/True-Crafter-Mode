#> asset:mob/0003.abstract_chaser_ai/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/3/in_hostile

# 立ち往生したらブロック設置
    function true_crafter_mode:entity/mob/common_moveset/place_block/check

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true