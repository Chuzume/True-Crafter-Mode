
#頭に最初からなんかかぶってるやつは除外
execute store result score @s Armor_Check run data get entity @s ArmorItems[3].Count

#日差しで燃えるアンデッドは帽子を被るように
replaceitem entity @s[type=zombie,tag=!T.Hard_AlreadyInit,scores={Armor_Check=0}] armor.head minecraft:leather_helmet{display:{color:43176}} 1
replaceitem entity @s[type=zombie_villager,tag=!T.Hard_AlreadyInit,scores={Armor_Check=0}] armor.head minecraft:leather_helmet{display:{color:6177334}} 1
replaceitem entity @s[type=skeleton,tag=!T.Hard_AlreadyInit,scores={Armor_Check=0}] armor.head minecraft:leather_helmet{display:{color:11250603}} 1
replaceitem entity @s[type=stray,tag=!T.Hard_AlreadyInit,scores={Armor_Check=0}] armor.head minecraft:leather_helmet{display:{color:6387319}} 1
replaceitem entity @s[type=drowned,tag=!T.Hard_AlreadyInit,scores={Armor_Check=0}] armor.head minecraft:leather_helmet{display:{color:7887164}} 1
