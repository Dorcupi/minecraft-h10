
execute as @r at @s if score @s spawnCheck0 matches 1 run reload

time set midnight

kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}]

kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}}]

kill @e[type=item,nbt={Item:{id:"minecraft:oak_log"}}]

kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}}]

kill @e[type=boat]

effect give @a slowness 2 2 true

effect give @a weakness 2 0 true

effect give @a mining_fatigue 2 0 true

effect give @a hunger 2 3 true

execute as @a at @s if block ~ ~-1 ~ #dirt run setblock ~ ~-1 ~ coarse_dirt

execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:totem_of_undying",Count:1b}}] run kill @s

execute as @a at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 birch_planks replace #logs_that_burn

execute as @a at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 birch_leaves replace #leaves

execute as @a at @s if block ~ ~-1 ~ water run setblock ~ ~-1 ~ air

execute as @a at @s if block ~ ~-2 ~ water run setblock ~ ~-2 ~ air

execute as @a at @s if block ~ ~ ~ water run setblock ~ ~ ~ air

execute as @a at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 lapis_ore replace #diamond_ores

execute as @a at @s if block ~ ~ ~ lava run kill @s

execute as @a at @s if block ~ ~-1 ~ lava run kill @s

execute as @a at @s if block ~ ~1 ~ lava run kill @s
 
execute as @a at @s if block ~ ~-1 ~ #ice run effect give @s speed 2 155 true

execute as @a at @s if block ~ ~-1 ~ slime_block run effect give @s speed 1 155 true

execute as @a at @s if block ~ ~-1 ~ slime_block run effect give @s levitation 1 90 true

execute as @a at @s if score @s craftingTableUsage matches 1 run effect give @s levitation 999 1 true

execute as @a at @s if score @s craftingTableUsage matches 1 run item replace entity @s armor.head with minecraft:potion{CustomPotionEffects:[{Id:7,Amplifier:28,Duration:-1,ShowParticles:0b}],CustomPotionColor:11731968,display:{Name:"\"Quick Death\"",Lore:["\"You know you want it\""]}}

execute as @a at @s if score @s craftingTableUsage matches 1 run scoreboard players reset @s craftingTableUsage

execute as @a at @s if score @s stoneMined matches 9 run summon zombie ^5 ^ ^

execute as @a at @s if score @s stoneMined matches 9 run kill @e[type=item,limit=1,sort=nearest,distance=..5,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}]

execute as @a at @s if score @s stoneMined matches 9 run effect give @s instant_damage 2 1

execute as @a at @s if score @s stoneMined matches 9 run scoreboard players reset @s stoneMined

execute as @a at @s run scoreboard players remove @s clearTimer 1

execute as @a at @s if score @s clearTimer matches 0 run clear @s

execute as @a at @s if score @s clearTimer matches 0 run summon warden ~ ~ ~

execute as @a at @s if score @s clearTimer matches 0 run summon creeper ~ ~ ~

execute as @a at @s if score @s clearTimer matches 0 run summon phantom ~ ~ ~ {Silent:1b,Invulnerable:1b,Passengers:[{id:"minecraft:skeleton",Silent:1b,Invulnerable:1b,Passengers:[{id:"minecraft:blaze",Silent:1b,Invulnerable:1b}]}]}

execute as @a at @s if score @s clearTimer matches 0 run summon phantom ~ ~ ~ {Silent:1b,Invulnerable:1b,Passengers:[{id:"minecraft:skeleton",Silent:1b,Invulnerable:1b,Passengers:[{id:"minecraft:blaze",Silent:1b,Invulnerable:1b}]}]}

execute as @a at @s if score @s clearTimer matches 0 run summon phantom ~ ~ ~ {Silent:1b,Invulnerable:1b,Passengers:[{id:"minecraft:skeleton",Silent:1b,Invulnerable:1b,Passengers:[{id:"minecraft:blaze",Silent:1b,Invulnerable:1b}]}]}

execute as @a at @s if score @s clearTimer matches 0 run tp ~ ~5 ~

execute as @a at @s if score @s clearTimer matches 0 run setblock ~ ~20 ~ anvil

execute as @a at @s run title @s actionbar ["",{"text":"Time before timeout: "},{"score":{"name":"@s","objective":"clearTimer"}}]

execute as @a at @s if score @s clearTimer matches 0 run scoreboard players set @s clearTimer 2400

execute as @a at @s if score @s health matches 20 run attribute @s generic.max_health base set 6

execute as @a at @s if score @s health matches 20 run effect give @s instant_damage 2 1 true

execute as @a at @s if score @s twigCheck >= @s 1000 run tp ~ ~1.5 ~

execute as @a at @s if score @s twigCheck >= @s 1000 run playsound minecraft:block.wood.break player @s ~ ~-.5 ~ 1000

execute as @a at @s if score @s twigCheck >= @s 1000 run effect give @s slowness 2 255 true

execute as @a at @s if score @s twigCheck >= @s 1000 run effect give @s jump_boost 2 200 true

execute as @a at @s if score @s twigCheck >= @s 1000 run summon item_frame ~ ~-1 ~ {CustomNameVisible:0b,Facing:1b,Invisible:1b,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Twig","italic":false}'}}}}

execute as @a at @s if score @s twigCheck >= @s 1000 run scoreboard players set @s twigCheck 0

execute as @a at @s if score @s landmineCheck2 >= @s 1000 run summon tnt ~ ~ ~

execute as @a at @s if score @s landmineCheck2 >= @s 1000 run scoreboard players set @s landmineCheck2 0

execute as @a at @s if score @s twigCheck2 >= @s 500 run tp ~ ~1.5 ~

execute as @a at @s if score @s twigCheck2 >= @s 500 run playsound minecraft:block.wood.break player @s ~ ~-.5 ~ 2000

execute as @a at @s if score @s twigCheck2 >= @s 500 run effect give @s slowness 4 255 true

execute as @a at @s if score @s twigCheck2 >= @s 500 run effect give @s jump_boost 4 200 true

execute as @a at @s if score @s twigCheck2 >= @s 500 run summon item_frame ~ ~-1 ~ {CustomNameVisible:0b,Facing:1b,Invisible:1b,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Twig","italic":false}'}}}}

execute as @a at @s if score @s twigCheck2 >= @s 500 run scoreboard players set @s twigCheck2 0

execute as @a at @s if score @s landmineCheck >= @s 5000 run summon tnt ~ ~ ~

execute as @a at @s if score @s landmineCheck >= @s 5000 run scoreboard players set @s landmineCheck 0

execute as @a at @s run scoreboard players add @s waterTimer 1

execute as @a at @s if score @s waterTimer matches 6000 run effect give @s nausea 20 10

execute as @a at @s if score @s waterTimer matches 6000 run effect give @s poison 20 1

execute as @a at @s if score @s waterTimer matches 6000 run tellraw @s {"text":"You are thirsty!","color":"dark_blue","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Drink water!","color":"blue"}]}}

execute as @a at @s if score @s waterTimer matches 6000 run scoreboard players set @s waterTimer 5500

execute as @a at @s if block ~ ~1 ~ water run scoreboard players set @s waterTimer 0

execute as @a at @s if score @s waterDrink matches 1 run scoreboard players set @s waterTimer 0

execute as @a at @s if score @s waterDrink matches 1 run scoreboard players set @s waterDrink 0

execute as @a at @s if score @s deathCheck matches 1 in overworld run spreadplayers ~ ~ 1000 1001 false @s

execute as @a at @s if score @s deathCheck matches 1 in overworld run spawnpoint @s ~ ~ ~

execute as @a at @s if score @s deathCheck matches 1 run tellraw @s {"text":"You died. Enjoy your new home!","color":"gray","bold":true,"italic":false}

execute as @a at @s if score @s deathCheck matches 1 run scoreboard players set @s waterTimer 0

execute as @a at @s if score @s deathCheck matches 1 run scoreboard players set @s deathCheck 0

execute as @a at @s if entity @s[nbt=!{Inventory:[{Slot:100b}]}] if block ~ ~-1 ~ #base_stone_nether run setblock ~ ~ ~ fire

execute as @a at @s if entity @s[nbt=!{Inventory:[{Slot:100b}]}] if block ~ ~-1 ~ sand run setblock ~ ~ ~ fire

execute as @a at @s if block ~ ~ ~ nether_portal run effect give @s wither 3 3

execute as @a at @s if block ~ ~-1 ~ soul_sand run kill @s

execute as @e[type=creeper] at @s run data merge entity @s {Silent:1b,ExplosionRadius:10b,Glowing:1b,Fuse:10,ActiveEffects:[{Id:14,Amplifier:255b,Duration:999999,ShowParticles:0b}]}

execute as @e[type=pig] at @s run summon ghast

execute as @e[type=pig] at @s run kill @s

execute as @e[type=sheep] at @s run summon ravager

execute as @e[type=sheep] at @s run kill @s

execute as @e[type=chicken] at @s run summon enderman

execute as @e[type=chicken] at @s run kill @s

execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run summon blaze ~ ~5 ~

execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run summon blaze ~ ~5 ~

execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run summon blaze ~ ~5 ~

execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run summon blaze ~ ~5 ~

execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run summon blaze ~ ~5 ~

execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run clear @s elytra

execute as @a at @s if entity @s[nbt=!{Inventory:[{Slot:100b}]}] if block ~ ~-1 ~ end_stone run kill @s