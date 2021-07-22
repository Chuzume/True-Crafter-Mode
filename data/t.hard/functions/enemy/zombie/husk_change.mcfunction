
# 疑似乱数取得
    execute store result score $Random Chuz_Temporary run function t.hard:random
# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz_Temporary %= $6 Chuz_Const

# 1/7の確率でガストに
    execute if score $Random Chuz_Temporary matches 0 run summon ghast ~ ~5 ~

# 置き換えを引いたら消える
    execute if score $Random Chuz_Temporary matches 0 run function t.hard:enemy/common/go_to_void
