
# 冗談みたいな挙動でブロックを掘り進む
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute facing entity @p feet run tp @s ^ ^ ^0.1

# 前のブロックを粉砕する
    execute unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy 
    execute unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy 
    execute unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 
    execute positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 
    execute positioned ~ ~1 ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy 
    execute positioned ~ ~1 ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy 