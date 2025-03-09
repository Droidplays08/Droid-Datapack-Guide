##loop file > run 20 times a second
clear @a dirt

execute as @e[tag=time_lived] run scoreboard players add @s time_lived 1
execute as @e[type=fireball,tag=time_lived] if score @s time_lived matches 400.. run kill @s

execute as @e[tag=motion_medium,tag=!motion_added] at @s rotated as @p run function tutorial_datapack:apply_motion_medium
