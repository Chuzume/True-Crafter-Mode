
# 0~65535の乱数を生成
    scoreboard players operation $Random.Base Chuz.Global *= $31743 Chuz.Const
    scoreboard players operation $Random.Base Chuz.Global += $Random.Curray Chuz.Global
    scoreboard players operation $Random.Curray Chuz.Global = $Random.Base Chuz.Global
    scoreboard players operation $Random.Curray Chuz.Global /= $65535 Chuz.Const
    scoreboard players operation $Random.Base Chuz.Global %= $65535 Chuz.Const

    scoreboard players get $Random.Base Chuz.Global