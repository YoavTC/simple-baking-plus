execute as @e[type=item,tag=!to_grind,nbt={Item:{id:"minecraft:wheat"}}] positioned as @s if block ~ ~1 ~ minecraft:piston[extended=false] as @s run tag @s add to_grind
execute as @e[type=item,tag=to_grind,nbt={Item:{id:"minecraft:wheat"}}] positioned as @s if block ~ ~1 ~ minecraft:piston[extended=true] as @s run function sbp:grind_wheat