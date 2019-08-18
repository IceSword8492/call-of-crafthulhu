# 経験値からレベルを算出し、レベルが上がった際に経験値を0に戻す

execute as @a[scores={job.no=3}] run scoreboard players operation @s tmp.exp = @s job.sorcery.lvl
execute as @a[scores={job.no=3}] run scoreboard players operation @s tmp.exp *= Integer 100
execute as @a[scores={job.no=3}] run execute if score @s job.sorcery.exp >= @s tmp.exp run scoreboard players add @s job.sorcery.lvl 1
execute as @a[scores={job.no=3}] run execute if score @s job.sorcery.exp >= @s tmp.exp run scoreboard players set @s job.sorcery.exp 0
