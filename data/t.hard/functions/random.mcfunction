
# 0~65535の乱数を生成
    scoreboard players operation $Random.Base ChuzGlobal *= $31743 ChuzConst
    scoreboard players operation $Random.Base ChuzGlobal += $Random.Curray ChuzGlobal
    scoreboard players operation $Random.Curray ChuzGlobal = $Random.Base ChuzGlobal
    scoreboard players operation $Random.Curray ChuzGlobal /= $65535 ChuzConst
    scoreboard players operation $Random.Base ChuzGlobal %= $65535 ChuzConst

    scoreboard players get $Random.Base ChuzGlobal