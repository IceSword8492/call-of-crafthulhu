execute as @a[scores={hasClickItem=2,clicked=1..}] at @s run particle minecraft:enchant ~ ~2 ~ 0 0 0 5 100 force
execute as @a[scores={hasClickItem=2,clicked=1..}] at @s run summon minecraft:zombie ~ ~2 ~ {Tags:["enemy"]}
execute as @a[scores={hasClickItem=2,clicked=1..}] at @s run effect give @s minecraft:hunger 1 100