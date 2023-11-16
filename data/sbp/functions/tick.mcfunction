#check wheat for piston
execute as @e[type=item,tag=!to_grind,nbt={Item:{id:"minecraft:wheat"}}] positioned as @s if block ~ ~1 ~ minecraft:piston[extended=false] as @s run tag @s add to_grind

#check wheat if piston was pushed
execute as @e[type=item,tag=to_grind,nbt={Item:{id:"minecraft:wheat"}}] positioned as @s if block ~ ~1 ~ minecraft:piston[extended=true] as @s run function sbp:grind_wheat

#check flour to see if in water cauldron
execute as @e[type=item,nbt={Age:10s,Item:{id:"minecraft:white_dye",tag:{flour:1b}}}] positioned as @s if block ~ ~ ~ minecraft:water_cauldron run function sbp:craft_dough
execute as @e[type=item,nbt={Age:10s,Item:{id:"minecraft:white_dye",tag:{flour:1b}}}] positioned as @s if block ~ ~ ~ minecraft:water run function sbp:craft_dough

#toast advancement detection
execute in the_nether as @e[type=item,nbt={Item:{id:"minecraft:bread"}},nbt=!{Fire:-1s}] positioned as @s if block ~ ~ ~ lava run advancement grant @p only sbp:toast