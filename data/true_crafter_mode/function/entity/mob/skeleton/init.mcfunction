# スポーン時に実行される処理

# 帽子を被る
    function true_crafter_mode:entity/mob/common_moveset/wear_hat

# ステータス
    attribute @s minecraft:generic.step_height base set 1

# 正直難易度上昇に貢献しなさそうで、持ち替えがある都合、これを対策すると処理が散らかるのでアイテム拾わなくする
    data modify entity @s CanPickUpLoot set value false

# 腰にアイテム装着する
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["TMCM.Other.Sheath","Chuz.Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]},item:{id:"minecraft:stone_axe",count:1}}
    ride @n[type=item_display,tag=Chuz.Init] mount @s

# ウィザースケルトンの場合、更にヘルスも強くなる
    attribute @s[type=wither_skeleton] generic.max_health base set 30 
    effect give @s[type=wither_skeleton] instant_damage 1 100 true

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.Skeleton.Ranged

# Init終了
    tag @s add TMCM.AlreadyInit