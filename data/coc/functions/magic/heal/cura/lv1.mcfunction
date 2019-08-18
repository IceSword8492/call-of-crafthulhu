execute as @a[scores={hasClickItem=5,clicked=1..}] at @s run execute as @a[distance=..10] at @s run particle minecraft:heart ~ ~2 ~ 0 0 0 5 100 force
execute as @a[scores={hasClickItem=5,clicked=1..}] at @s run effect give @a[distance=..10] minecraft:regeneration 1 4
execute as @a[scores={hasClickItem=5,clicked=1..}] at @s run effect give @s minecraft:hunger 1 100