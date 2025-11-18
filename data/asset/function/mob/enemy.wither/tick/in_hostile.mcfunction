#> asset:mob/enemy.wither/tick/in_hostile
#
# 
#
# @within function asset:mob/enemy.wither/tick/

# ターゲット特定
    execute on target run tag @s[distance=..48] add TMCM.Target

# スコア加算
    scoreboard players add @s General.Mob.Tick 1

# 接近されたウィザーヘッド射出が別の技になる
    execute if entity @n[tag=TMCM.Target,distance=..5] run function asset:mob/enemy.wither/tick/thunder/

# ウィザーヘッドにタグ付与
    execute as @n[type=wither_skull,distance=..8] run tag @s add enemy.wither.HostileSkull

# 通常時の動作
    execute if entity @s[tag=!enemy.wither.StopBaseMove,tag=!enemy.wither.InDash] run function asset:mob/enemy.wither/tick/base_move

# フェイズ2以降、確率でサイドダッシュなどの動作を挟む
    execute if score @s[tag=!enemy.wither.InAction] enemy.wither.Phase matches 2.. if score @s General.Mob.Tick matches 0 run function asset:mob/enemy.wither/tick/dash/select

# スキル発動、ただし技が一周してない場合
    execute if score @s[tag=!enemy.wither.InAction,tag=!enemy.wither.CycleReset] General.Mob.Tick matches 60 run function asset:mob/enemy.wither/tick/skill/select/

# 技が一瞬してたら確定で動作を選択
    execute if score @s[tag=!enemy.wither.InAction,tag=enemy.wither.CycleReset] General.Mob.Tick matches 60.. run function asset:mob/enemy.wither/tick/skill/select/cycle_reset

# スキル発動
    execute if entity @s[tag=enemy.wither.InAction] run function asset:mob/enemy.wither/tick/skill/branch

# スキル発動開始時、移動を停止
    execute if score @s[tag=enemy.wither.InAction] General.Mob.Tick matches 0 run tag @s add enemy.wither.StopBaseMove

# ダッシュ発動
    execute if entity @s[tag=enemy.wither.InDash] run function asset:mob/enemy.wither/tick/dash/branch

# 壁があったら止まる
    execute on vehicle at @s if function asset:mob/enemy.wither/tick/check_collide run rotate @s ~ 0

# めり込んでたら登ってくる
    execute on vehicle at @s unless block ~ ~ ~ #lib:no_collision_without_fluid run tp @s ~ ~0.1 ~

# 戦闘中は戦闘外用のスコアをリセット
    scoreboard players reset @s enemy.wither.OutOfCombat

# ターゲット解除
    execute on target run tag @s[distance=..48] remove TMCM.Target
