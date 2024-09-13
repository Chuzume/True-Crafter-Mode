
# 疑似乱数取得
    execute store result score $Random Chuz.Temporary run function true_crafter_mode:random
# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz.Temporary %= $2 Chuz.Const

# 1/3の確率で変化
    execute if score $Random Chuz.Temporary matches 0 run summon illusioner

# 置き換えを引いたら消える
    execute if score $Random Chuz.Temporary matches 0 run function true_crafter_mode:enemy/common/go_to_void

# Init完了
    tag @s add TMCM.AlreadyInit