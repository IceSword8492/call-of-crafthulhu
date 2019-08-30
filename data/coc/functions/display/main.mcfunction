# プレイヤーの状態を表示
execute as @a[x_rotation=-90..-85,tag=!showStatus] run tellraw @s ["",{"text":"-----------------------------------------------------\nName:    ","color":"gold"},{"selector":"@s","color":"gold"}]
function coc:stats/display
function coc:mission/display
execute as @a[x_rotation=-90..-85,tag=!showStatus] run tellraw @s ["",{"text":"-----------------------------------------------------", "color":"gold"}]
execute as @a[x_rotation=-90..-85,tag=!showStatus] run tag @s add showStatus
tag @a[x_rotation=-85..] remove showStatus