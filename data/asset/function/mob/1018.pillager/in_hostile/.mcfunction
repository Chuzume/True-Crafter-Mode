#> asset:mob/1018.pillager/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1017/in_hostile

# 立ち往生したらブロック設置
    function true_crafter_mode:entity/mob/common_moveset/place_block/check

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
