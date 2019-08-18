# 経験値からレベルを算出し、レベルが上がった際に経験値を0に戻す

execute as @a[scores={job.no=4}] run scoreboard players operation @s tmp.exp = @s job.doctor.lvl
execute as @a[scores={job.no=4}] run scoreboard players operation @s tmp.exp *= Integer 100
execute as @a[scores={job.no=4}] run execute if score @s job.doctor.exp >= @s tmp.exp run scoreboard players add @s job.doctor.lvl 1
execute as @a[scores={job.no=4}] run execute if score @s job.doctor.exp >= @s tmp.exp run scoreboard players set @s job.doctor.exp 0
