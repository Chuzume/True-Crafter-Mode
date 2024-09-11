#   Copyright © 2020 赤石愛

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
scoreboard players operation @s ScoreToHealth < #_ ScoreToHealth
attribute @s minecraft:generic.max_health modifier add score_to_health:17 -838.8607 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:16 -419.4304 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:16 419.4304 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:15 -209.7152 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:15 209.7152 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:14 -104.8576 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:14 104.8576 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:13 -52.4288 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:13 52.4288 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:12 -26.2144 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:12 26.2144 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:11 -13.1072 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:11 13.1072 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:10 -6.5536 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:10 6.5536 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0f -3.2768 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0f 3.2768 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0e -1.6384 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0e 1.6384 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0d -0.8192 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0d 0.8192 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0c -0.4096 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0c 0.4096 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0b -0.2048 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0b 0.2048 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0a -0.1024 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:0a 0.1024 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:09 -0.0512 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:09 0.0512 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:08 -0.0256 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:08 0.0256 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:07 -0.0128 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:07 0.0128 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:06 -0.0064 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:06 0.0064 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:05 -0.0032 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:05 0.0032 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:04 -0.0016 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:04 0.0016 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:03 -0.0008 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:03 0.0008 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:02 -0.0004 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:02 0.0004 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:01 -0.0002 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:01 0.0002 add_value

execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:00 -0.0001 add_value
execute if score @s ScoreToHealth > #_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add score_to_health:00 0.0001 add_value

effect give @s minecraft:instant_health 1 252 true
tag @s add ScoreToHealth.Modified
scoreboard players reset @s ScoreToHealth
