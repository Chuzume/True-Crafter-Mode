
# 頭に最初からなんかかぶってるやつは除外
    execute store result score @s Armor_Check run data get entity @s ArmorItems[3].count

# 日差しで燃えるアンデッドは帽子を被るように
    item replace entity @s[type=zombie,tag=!t.hardAlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[minecraft:dyed_color= {show_in_tooltip: true, rgb: 43176}] 1
    item replace entity @s[type=zombie_villager,tag=!t.hardAlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[minecraft:dyed_color= {show_in_tooltip: true, rgb: 6177334}] 1
    item replace entity @s[type=skeleton,tag=!t.hardAlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[minecraft:dyed_color= {show_in_tooltip: true, rgb: 11250603}] 1
    item replace entity @s[type=stray,tag=!t.hardAlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[minecraft:dyed_color= {show_in_tooltip: true, rgb: 6387319}] 1
    item replace entity @s[type=drowned,tag=!t.hardAlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[minecraft:dyed_color= {show_in_tooltip: true, rgb: 7887164}] 1