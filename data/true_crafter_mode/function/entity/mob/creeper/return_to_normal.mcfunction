# 爆発終わったあとに諸々解除する
    data modify entity @s NoAI set value 0b
    data modify entity @s Invulnerable set value 0b

# なんか爆風のMotion残るっぽいから全部消しちゃう
    data modify entity @s Motion[0] set value 0.0d
    data modify entity @s Motion[1] set value 0.0d
    data modify entity @s Motion[2] set value 0.0d

# リセット
    scoreboard players reset @s TMCM.Tick
    scoreboard players reset @s TMCM.Action.Dig