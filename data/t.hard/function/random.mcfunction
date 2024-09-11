
# 0~65535の乱数を生成
    scoreboard players operation $Random.Base Chuz_Global *= $31743 Chuz_Const
    scoreboard players operation $Random.Base Chuz_Global += $Random.Curray Chuz_Global
    scoreboard players operation $Random.Curray Chuz_Global = $Random.Base Chuz_Global
    scoreboard players operation $Random.Curray Chuz_Global /= $65535 Chuz_Const
    scoreboard players operation $Random.Base Chuz_Global %= $65535 Chuz_Const

    execute as @s run scoreboard players get $Random.Base Chuz_Global