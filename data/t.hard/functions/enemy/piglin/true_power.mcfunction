
#敵対対象がいるならこのfunctionを使用する。真の力を見せてやる。

#遠距離タイプはバックステップ
execute if entity @s[tag=T.Hard_Piglin_Crossbow,tag=!T.Hard_Piglin_F.Resist,tag=!T.Hard_Piglin_Heal] run function t.hard:enemy/piglin/ranged

#謎パワーで落下無効化
execute if entity @s[nbt={OnGround:0b}] run function t.hard:enemy/common/fall_resist

#近くにいる非敵対ピグリンに自身の敵を知らせる
execute if entity @s[type=piglin] as @e[type=piglin,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},distance=0.1..15] run function t.hard:enemy/piglin/enemy_report

#オプションで封じられておらず、なおかつ近くにウィザースケルトンがいないならブロック設置
execute if score #t.hard_Gamerule T.Hard_Gamerule2 matches 1 unless entity @e[type=wither_skeleton,distance=..30] run function t.hard:enemy/common/enemy_block_place_nether

#静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
execute if entity @s[nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..20,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Dig 1
#ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 0 run scoreboard players reset @s T.Hard_Dig
#t.hard_Digが30になったらブロック粉々
execute if entity @s[scores={T.Hard_Y_Check=0,T.Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @e[type=#t.hard:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function t.hard:enemy/common/break_block_forward
scoreboard players reset @s[nbt=!{Motion:[0.0,-0.0784000015258789d,0.0]}] T.Hard_Dig 

#静止していてれば上下のブロック破壊
execute if entity @s[scores={T.Hard_Dig=30,T.Hard_Y_Check=..-1},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..7,tag=!T.Hard_Exception] unless block ~ ~2 ~ #t.hard:no_dig run setblock ~ ~2 ~ air destroy 
execute if entity @s[scores={T.Hard_Dig=30,T.Hard_Y_Check=1..},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..7,tag=!T.Hard_Exception] unless block ~ ~-1 ~ #t.hard:no_dig run setblock ~ ~-1 ~ air destroy 

#付近にプレイヤーがいなければY座標を消去
execute unless entity @a[distance=..16,tag=!T.Hard_Exception] run scoreboard players reset @s T.Hard_Y_Check 
execute unless entity @a[distance=..16,tag=!T.Hard_Exception] run scoreboard players reset @s T.Hard_Dig

#採掘カウント削除
scoreboard players reset @s[scores={T.Hard_Dig=30..}] T.Hard_Dig

#段差飛び越え
function t.hard:enemy/common/jump_gap