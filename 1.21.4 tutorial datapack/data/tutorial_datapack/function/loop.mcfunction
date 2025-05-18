##loop file > run 20 times a second

execute as @e[tag=time_lived] run scoreboard players add @s time_lived 1
execute as @e[type=fireball,tag=time_lived] if score @s time_lived matches 400.. run kill @s

execute as @e[tag=motion_medium,tag=!motion_added] at @s rotated as @p run function tutorial_datapack:apply_motion_medium

execute as @e[type=egg,nbt={Item:{id:"minecraft:egg",count:1,components:{"minecraft:custom_data":{bridge_egg:1b}}},HasBeenShot:1b},tag=!bridge_egg] run function tutorial_datapack:tag_bridge_egg
execute as @e[type=egg,tag=bridge_egg] if score @s time_lived matches 40.. run kill @s
execute as @e[type=egg,tag=bridge_egg] at @s run summon marker ~ ~ ~ {Tags:["time_lived","bridge_egg_tracer"]}
execute as @e[type=marker,tag=bridge_egg_tracer] at @s if score @s time_lived matches 5.. run fill ~1 ~-1 ~ ~-1 ~-1 ~ white_wool replace air
execute as @e[type=marker,tag=bridge_egg_tracer] at @s if score @s time_lived matches 5.. run fill ~ ~-1 ~1 ~ ~-1 ~-1 white_wool replace air
execute as @e[type=marker,tag=bridge_egg_tracer] at @s if score @s time_lived matches 5.. run kill @s