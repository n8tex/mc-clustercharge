execute as @e[tag=ccRegistered,scores={cc_state=2}] run tag @s add ccToTick

#North
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=0,cc_itemFacing=1}] at @s run summon tnt ~ ~ ~-2 {Motion:[-0.5,0.0,-0.7],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=10,cc_itemFacing=1}] at @s run summon tnt ~ ~ ~-2 {Motion:[-0.25,0.0,-0.5],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=20,cc_itemFacing=1}] at @s run summon tnt ~ ~ ~-2 {Motion:[0.0,0.0,-0.7],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=30,cc_itemFacing=1}] at @s run summon tnt ~ ~ ~-2 {Motion:[0.25,0.0,-0.4],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=40,cc_itemFacing=1}] at @s run summon tnt ~ ~ ~-2 {Motion:[0.5,0.0,-0.7],Fuse:40}

#East
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=0,cc_itemFacing=2}] at @s run summon tnt ~2 ~ ~ {Motion:[0.7,0.0,-0.5],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=10,cc_itemFacing=2}] at @s run summon tnt ~2 ~ ~ {Motion:[0.5,0.0,-0.25],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=20,cc_itemFacing=2}] at @s run summon tnt ~2 ~ ~ {Motion:[0.7,0.0,0.0],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=30,cc_itemFacing=2}] at @s run summon tnt ~2 ~ ~ {Motion:[0.4,0.0,0.25],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=40,cc_itemFacing=2}] at @s run summon tnt ~2 ~ ~ {Motion:[0.7,0.0,0.5],Fuse:40}

#South
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=0,cc_itemFacing=3}] at @s run summon tnt ~ ~ ~2 {Motion:[0.5,0.0,0.7],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=10,cc_itemFacing=3}] at @s run summon tnt ~ ~ ~2 {Motion:[0.25,0.0,0.5],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=20,cc_itemFacing=3}] at @s run summon tnt ~ ~ ~2 {Motion:[0.0,0.0,0.7],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=30,cc_itemFacing=3}] at @s run summon tnt ~ ~ ~2 {Motion:[-0.25,0.0,0.4],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=40,cc_itemFacing=3}] at @s run summon tnt ~ ~ ~2 {Motion:[-0.5,0.0,0.7],Fuse:40}

#West
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=0,cc_itemFacing=4}] at @s run summon tnt ~-2 ~ ~ {Motion:[-0.7,0.0,0.5],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=10,cc_itemFacing=4}] at @s run summon tnt ~-2 ~ ~ {Motion:[-0.5,0.0,0.25],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=20,cc_itemFacing=4}] at @s run summon tnt ~-2 ~ ~ {Motion:[-0.7,0.0,0.0],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=30,cc_itemFacing=4}] at @s run summon tnt ~-2 ~ ~ {Motion:[-0.4,0.0,-0.25],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=40,cc_itemFacing=4}] at @s run summon tnt ~-2 ~ ~ {Motion:[-0.7,0.0,-0.5],Fuse:40}

#Down
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=0,cc_itemFacing=5}] at @s run summon tnt ~ ~-2.5 ~ {Motion:[-0.2,-0.5,0.0],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=10,cc_itemFacing=5}] at @s run summon tnt ~ ~-2.5 ~ {Motion:[0.1,-0.5,0.0],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=20,cc_itemFacing=5}] at @s run summon tnt ~ ~-2.5 ~ {Motion:[0.0,-0.5,0.0],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=30,cc_itemFacing=5}] at @s run summon tnt ~ ~-2.5 ~ {Motion:[0.0,-0.5,0.1],Fuse:40}
execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=40,cc_itemFacing=5}] at @s run summon tnt ~ ~-2.5 ~ {Motion:[0.0,-0.5,-0.2],Fuse:40}

execute as @e[tag=ccRegistered,scores={cc_state=2,cc_ticks=40}] run kill @s
