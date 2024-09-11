# 近距離ではネットばらまき
    execute if entity @p[distance=..7,tag=!T.HardException] run scoreboard players add @s T.HardMoveset1 1
    execute if entity @s[scores={T.HardMoveset1=40}] run function true_crafter_mode:enemy/spider/spread

# 遠距離では正確に
    execute if entity @p[distance=7..,tag=!T.HardException] run scoreboard players add @s T.HardMoveset2 1
    execute if entity @s[scores={T.HardMoveset2=40}] run function true_crafter_mode:enemy/spider/shoot