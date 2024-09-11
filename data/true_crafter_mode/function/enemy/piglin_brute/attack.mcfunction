
#最初の接近時、咆哮をで付近の全ピグリン敵対化
execute unless entity @s[tag=T.HardNoRoar] if entity @e[type=#true_crafter_mode:piglin_enemy,distance=..10,tag=!T.HardException] run function true_crafter_mode:enemy/piglin_brute/roar

#自分でも実行する
function true_crafter_mode:enemy/piglin/true_power

#プレイヤーが範囲外なら咆哮、回復の使用制限を解除
execute unless entity @e[type=#true_crafter_mode:piglin_enemy,tag=!T.HardException,distance=..25] run tag @s remove T.HardNoRoar
execute unless entity @e[type=#true_crafter_mode:piglin_enemy,tag=!T.HardException,distance=..25] run tag @s remove T.HardNoHeal
execute unless entity @e[type=#true_crafter_mode:piglin_enemy,tag=!T.HardException,distance=..25] run tag @s remove T.HardNoF.Resist

#着火したら耐火ポーション使用
execute if entity @s[nbt=!{Fire:-1s},tag=!T.HardPiglin_F.Resist] if entity @s[nbt=!{ActiveEffects:[{Id:12b}]},tag=!T.HardNoF.Resist] run function true_crafter_mode:enemy/piglin/potion_fire_resist
#t.hard_Piglin_F.Resistタグ持ってればポーションを飲む
scoreboard players add @s[tag=T.HardPiglin_F.Resist] T.HardMoveset2 1
execute if entity @s[tag=T.HardPiglin_F.Resist,scores={T.HardMoveset2=10}] run playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=T.HardPiglin_F.Resist,scores={T.HardMoveset2=20}] run playsound minecraft:entity.player.burp neutral @a ~ ~ ~ 1 1
effect give @s[tag=T.HardPiglin_F.Resist,scores={T.HardMoveset2=20}] fire_resistance 120 0 
#耐火ポーション飲み終わり
execute if entity @s[tag=T.HardPiglin_F.Resist,scores={T.HardMoveset2=30}] run function true_crafter_mode:enemy/piglin_brute/fire_resist_finish

#体力をスコア化
execute store result score @s T.HardHealth run data get entity @s Health 1
#スコア化された体力が半分以下かつ、プレイヤーとの距離が開いていれば、一度のみ回復する
execute if entity @s[scores={T.HardHealth=..25},tag=!T.HardNoHeal,tag=!T.HardPiglin_Heal] unless entity @e[type=#true_crafter_mode:piglin_enemy,distance=..8,tag=!T.HardException] run function true_crafter_mode:enemy/piglin/heal
#t.hard_Piglin_Healタグ持ってれば肉食う
scoreboard players add @s[tag=T.HardPiglin_Heal] T.HardMoveset2 1
execute if entity @s[tag=T.HardPiglin_Heal,scores={T.HardMoveset2=10}] run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=T.HardPiglin_Heal,scores={T.HardMoveset2=20}] run playsound minecraft:entity.player.burp neutral @a ~ ~ ~ 1 1
effect give @s[tag=T.HardPiglin_Heal,scores={T.HardMoveset2=20}] instant_health 1 1
#ごはん食べ終わり
execute if entity @s[tag=T.HardPiglin_Heal,scores={T.HardMoveset2=30}] run function true_crafter_mode:enemy/piglin_brute/heal_finish

#飛びかかりとバックステップ
#前をチェックして飛びかかり
<<<<<<< HEAD:data/t.hard/function/enemy/piglin_brute/attack.mcfunction
execute positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:piglin_enemy,distance=5..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s[nbt={OnGround:1b}] TrueCrafterMode.Tick 1
scoreboard players set @s[scores={TrueCrafterMode.Tick=40}] Chuz_Speed 6
execute if entity @s[scores={TrueCrafterMode.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={TrueCrafterMode.Tick=40..}] TrueCrafterMode.Tick
=======
execute positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:piglin_enemy,distance=5..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s[nbt={OnGround:1b}] T.HardMoveset1 1
scoreboard players set @s[scores={T.HardMoveset1=40}] Chuz_Speed 6
execute if entity @s[scores={T.HardMoveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={T.HardMoveset1=40..}] T.HardMoveset1
>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/piglin_brute/attack.mcfunction

#近接当てたら即座にバックステップ
execute if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T.HardMoveset3 59
#時々バクステで距離を取る
execute if entity @e[type=#true_crafter_mode:piglin_enemy,distance=..5,tag=!T.HardException] run scoreboard players add @s T.HardMoveset3 1
scoreboard players set @s[scores={T.HardMoveset3=60}] Chuz_Speed 7
execute if entity @s[scores={T.HardMoveset3=60..}] facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_step
execute if entity @s[scores={T.HardMoveset3=60..}] facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
execute if entity @s[scores={T.HardMoveset3=60..}] facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^-1 ^-3 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={T.HardMoveset3=60..}] T.HardMoveset3
execute unless entity @a[distance=..5,tag=!T.HardException] run scoreboard players reset @s[scores={T.HardMoveset3=60..}] T.HardMoveset3

#段差飛び越え
execute if entity @s[nbt={Brain:{memories:{"minecraft:angry_at":{}}}}] run execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

#泳ぐ。ただし泳ぎがヘタクソなので水泳中には攻撃ができない
execute if entity @a[distance=..30,tag=!T.HardException] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/piglin/swim

#泳ぎ中に殴られた場合。前述の通りヘタクソなので情けない声になる
execute if entity @s[tag=T.HardPiglin_Silent,nbt={HurtTime:9s}] run playsound minecraft:entity.piglin.retreat hostile @a ~ ~ ~ 2 1
execute if entity @s[tag=T.HardPiglin_Silent,nbt={HurtTime:9s}] run playsound minecraft:entity.piglin.hurt hostile @a ~ ~ ~ 2 1

#泳ぎ解除
execute unless block ~ ~0.25 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/piglin/swim_cancel
