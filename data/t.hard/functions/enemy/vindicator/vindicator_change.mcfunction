
# 疑似乱数取得
    execute store result score $Random Chuz_Temporary run function t.hard:random
# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz_Temporary %= $2 Chuz_Const

# 1/3の確率で変化
    execute if score $Random Chuz_Temporary matches 0 run summon illusioner

# 置き換えを引いたら消える
    execute if score $Random Chuz_Temporary matches 0 run function t.hard:enemy/common/go_to_void

# Init完了
    tag @s add T.HardAlreadyInit