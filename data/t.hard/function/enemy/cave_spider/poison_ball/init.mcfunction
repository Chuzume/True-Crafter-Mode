# 飛ばす
    scoreboard players set @s Chuz_Speed 6
    execute facing entity @p[tag=!t.hardException] eyes run function t.hard:move_xz
    data modify entity @s Motion[1] set value 0.4
    tag @s add t.hard_PoisonBall
    tag @s remove t.hard_PoisonBallInit