#Register (cc_pCheckState=0)
execute as @e[tag=ccItem] run scoreboard players set @s cc_pCheckState 1
execute as @e[tag=ccItem] run scoreboard players set @s cc_itemFacing 0
execute as @e[tag=ccItem] run scoreboard players set @s cc_state 0
execute as @e[tag=ccItem] run scoreboard players set @s cc_ticks -1
execute as @e[tag=ccItem] run tag @s add ccRegistered
execute as @e[tag=ccItem] run tag @s remove ccItem

#Check Duplicate (cc_pCheckState=1)
execute as @e[tag=ccRegistered,scores={cc_pCheckState=1}] if entity @e[tag=ccRegistered,scores={cc_state=1}] run tellraw @p {"text":"Duplicate detected. Charge placement failed."}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=1}] if entity @e[tag=ccRegistered,scores={cc_state=1}] run kill @s
execute as @e[tag=ccRegistered,scores={cc_pCheckState=1}] unless entity @e[tag=ccRegistered,scores={cc_state=1}] run scoreboard players set @s cc_pCheckState 2

#Check orientation (cc_pCheckState=2)
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2}] at @s if block ~ ~ ~-2 air unless block ~ ~ ~-1 air run scoreboard players set @s cc_itemFacing 1
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2,cc_itemFacing=1}] run tellraw @p {"text":"Charge direction: North"}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2}] at @s if block ~2 ~ ~ air unless block ~1 ~ ~ air run scoreboard players set @s cc_itemFacing 2
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2,cc_itemFacing=2}] run tellraw @p {"text":"Charge direction: East"}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2}] at @s if block ~ ~ ~2 air unless block ~ ~ ~1 air run scoreboard players set @s cc_itemFacing 3
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2,cc_itemFacing=3}] run tellraw @p {"text":"Charge direction: South"}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2}] at @s if block ~-2 ~ ~ air unless block ~-1 ~ ~ air run scoreboard players set @s cc_itemFacing 4
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2,cc_itemFacing=4}] run tellraw @p {"text":"Charge direction: West"}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2}] at @s if block ~ ~-2 ~ air unless block ~ ~-1 ~ air run scoreboard players set @s cc_itemFacing 5
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2,cc_itemFacing=5}] run tellraw @p {"text":"Charge direction: Down"}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2,cc_itemFacing=1..}] run scoreboard players set @s cc_pCheckState 3
execute as @e[tag=ccRegistered,scores={cc_pCheckState=2,cc_itemFacing=..1}] run scoreboard players set @s cc_pCheckState 41

#Set Global Charge Status (cc_pCheckState=3)
execute as @e[tag=ccRegistered,scores={cc_pCheckState=3}] run scoreboard players set @s cc_state 1
execute as @e[tag=ccRegistered,scores={cc_pCheckState=3}] run tellraw @p {"text":"Setup complete"}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=3}] run tellraw @p {"text":"Click here to launch","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=ccRegistered,scores={cc_state=1}] cc_state 2"}}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=3}] run scoreboard players set @s cc_pCheckState 4

#Kill Failed Placement (cc_pCheckState=41)
execute as @e[tag=ccRegistered,scores={cc_pCheckState=41}] run tellraw @p {"text":"Charge placement failed."}
execute as @e[tag=ccRegistered,scores={cc_pCheckState=41}] run kill @s

# #Generate ID
# execute as @e[tag=ccRegistered] at @s store result score @s cc_itemX run data get entity @s Pos[0] 1
# execute as @e[tag=ccRegistered] at @s store result score @s cc_itemY run data get entity @s Pos[1] 1
# execute as @e[tag=ccRegistered] at @s store result score @s cc_itemZ run data get entity @s Pos[2] 1
# execute as @e[tag=ccRegistered] at @s store result score @s cc_itemRot run data get entity @s Rotation[0] 100
# execute as @e[tag=ccRegistered] run scoreboard players operation @s cc_itemID += @s cc_itemX
# execute as @e[tag=ccRegistered] run scoreboard players operation @s cc_itemID += @s cc_itemY
# execute as @e[tag=ccRegistered] run scoreboard players operation @s cc_itemID += @s cc_itemZ
# execute as @e[tag=ccRegistered] run scoreboard players operation @s cc_itemID += @s cc_itemRot
# execute as @e[tag=ccRegistered] run scoreboard players operation @p[distance=..1] cc_itemID += @s cc_itemID
