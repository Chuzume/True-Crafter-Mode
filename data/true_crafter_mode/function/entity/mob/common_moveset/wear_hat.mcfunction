
# 頭に最初からなんかかぶってるやつは除外
    execute store result score @s Armor_Check run data get entity @s ArmorItems[3]

# 日差しで燃えるアンデッドは帽子を被るように
    item replace entity @s[type=zombie,tag=!TMCM.AlreadyInit,scores={Armor_Check=0}] armor.head with leather_helmet[dyed_color=43176] 1
    item replace entity @s[type=zombie_villager,tag=!TMCM.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[dyed_color=6177334] 1
    item replace entity @s[type=skeleton,tag=!TMCM.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[dyed_color=11250603] 1
    item replace entity @s[type=stray,tag=!TMCM.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[dyed_color=6387319] 1
    item replace entity @s[type=bogged,tag=!TMCM.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[dyed_color=3887645] 1
    item replace entity @s[type=drowned,tag=!TMCM.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[dyed_color=7887164] 1

# リセット
    scoreboard players reset @s Armor_Check