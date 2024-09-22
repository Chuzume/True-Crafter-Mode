#> true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/tick_owner
#
# 本体側のTick処理
#
# @within function true_crafter_mode:entity/mob/**

# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle dust{color:[0.5,0.0,0.5],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# 立ち往生したらブロック設置
    function true_crafter_mode:entity/mob/common_moveset/place_block/check

# ブロック破壊
    function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/break_block