
# 何かと敵対してると本気出す
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:enemy/piglin/true_power

# プレイヤーが範囲外なら回復の使用制限を解除
    execute unless entity @e[type=#true_crafter_mode:piglin_enemy,tag=!TMCM.Exception,distance=..25] run tag @s remove T.HardNoHeal
    execute unless entity @e[type=#true_crafter_mode:piglin_enemy,tag=!TMCM.Exception,distance=..25] run tag @s remove T.HardNoFireResist

# 着火したら耐火ポーション使用
    execute if entity @s[nbt=!{Fire:-1s},tag=!TMCM.Piglin.FireResist] if entity @s[nbt=!{ActiveEffects:[{Id:12b}]},tag=!T.HardNoFireResist] run function true_crafter_mode:enemy/piglin/potion_fire_resist
# t.hard_Piglin_FireResistタグ持ってればポーションを飲む
    scoreboard players add @s[tag=TMCM.Piglin.FireResist] TMCM.SubAction 1
    execute if entity @s[tag=TMCM.Piglin.FireResist,scores={TMCM.SubAction=10}] run playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1
    execute if entity @s[tag=TMCM.Piglin.FireResist,scores={TMCM.SubAction=20}] run playsound minecraft:entity.player.burp neutral @a ~ ~ ~ 1 1
    effect give @s[tag=TMCM.Piglin.FireResist,scores={TMCM.SubAction=20}] fire_resistance 120 0 
# 耐火ポーション飲み終わり
    execute if entity @s[tag=TMCM.Piglin.FireResist,scores={TMCM.SubAction=30}] run function true_crafter_mode:enemy/piglin/fire_resist_finish

# 体力をスコア化
    execute store result score @s T.HardHealth run data get entity @s Health 1
# スコア化された体力が半分以下かつ、プレイヤーとの距離が開いていれば、一度のみ回復する
    execute if entity @s[scores={T.HardHealth=..10},tag=!T.HardNoHeal,tag=!TMCM.Piglin.Heal] unless entity @e[type=#true_crafter_mode:piglin_enemy,distance=..8,tag=!TMCM.Exception] run function true_crafter_mode:enemy/piglin/heal
# t.hard_Piglin_Healタグ持ってれば肉食う
    scoreboard players add @s[tag=TMCM.Piglin.Heal] TMCM.SubAction 1
    execute if entity @s[tag=TMCM.Piglin.Heal,scores={TMCM.SubAction=10}] run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
    execute if entity @s[tag=TMCM.Piglin.Heal,scores={TMCM.SubAction=20}] run playsound minecraft:entity.player.burp neutral @a ~ ~ ~ 1 1
    effect give @s[tag=TMCM.Piglin.Heal,scores={TMCM.SubAction=20}] instant_health 2 1
# 回復完了
    execute if entity @s[tag=TMCM.Piglin.Heal,scores={TMCM.SubAction=30}] run function true_crafter_mode:enemy/piglin/heal_finish

# 泳ぐ。ただし泳ぎがヘタクソなので水泳中には攻撃ができない
    execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/piglin/swim

# 泳ぎ中に殴られた場合。前述の通りヘタクソなので情けない声になる
    execute if entity @s[tag=TMCM.Piglin.Silent,nbt={HurtTime:9s}] run playsound minecraft:entity.piglin.retreat hostile @a ~ ~ ~ 2 1
    execute if entity @s[tag=TMCM.Piglin.Silent,nbt={HurtTime:9s}] run playsound minecraft:entity.piglin.hurt hostile @a ~ ~ ~ 2 1

# 泳ぎ解除
    execute unless block ~ ~0.25 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/piglin/swim_cancel

# チャージ済みなら火の矢を装填
    item replace entity @s[nbt={HandItems: [{id: "minecraft:crossbow", tag: {Charged: 1b}}]}] weapon.mainhand with crossbow{ItemName: Piglin_Firebow, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {CustomPotionEffects: [{Id: 27b, Amplifier: 3b, Duration: 1}], CustomPotionColor: 16746496}}, {}, {}], Charged: 1b} 1
