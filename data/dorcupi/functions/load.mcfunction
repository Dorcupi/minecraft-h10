
scoreboard objectives add craftingTableUsage minecraft.custom:interact_with_crafting_table

scoreboard objectives add stoneMined minecraft.mined:minecraft.stone

scoreboard objectives add clearTimer dummy

scoreboard objectives add health health

scoreboard objectives add deathCheck deathCount

scoreboard objectives add twigCheck minecraft.custom:minecraft.walk_one_cm

scoreboard objectives add spawnCheck0 minecraft.custom:deaths

scoreboard objectives add twigCheck2 minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add landmineCheck minecraft.custom:minecraft.walk_one_cm

scoreboard objectives add landmineCheck2 minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add waterTimer dummy

scoreboard objectives add waterDrink minecraft.used:minecraft.potion

scoreboard objectives add 1000 dummy

scoreboard objectives add 500 dummy

scoreboard objectives add reloadCheck dummy

scoreboard objectives add 5000 dummy

scoreboard players set @a twigCheck 0

scoreboard players set @a twigCheck2 0

scoreboard players set @a landmineCheck 0

scoreboard players set @a landmineCheck2 0

scoreboard players set @a 1000 1000

scoreboard players set @a 500 500

scoreboard players set @a 5000 5500

scoreboard players set @a waterTimer 0

scoreboard players set @a spawnCheck0 9000

execute as @a at @s run scoreboard players set @s clearTimer 2400

execute as @a at @s run title @s times 20 200 20

execute as @a at @s run title @s subtitle ["",{"text":"Welcome to death, ","color":"dark_blue"},{"selector":"@s","color":"dark_blue"}]

execute as @a at @s run title @s title {"text":"Minecraft H10","bold":true,"color":"dark_red"}

execute as @a at @s run summon evoker_fangs ~ ~ ~