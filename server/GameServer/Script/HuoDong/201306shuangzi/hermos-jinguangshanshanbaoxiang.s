 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013  
 //  Author:??  
 //  TaskName: ??????? 
 //****************************  
function OnDead(){ 
	#name = GetPlayerInfo(-1,"name")
	DropMonsterItems(-1,90311)
	BC( "screen", "servergroup", -1, "Player",#name,"How lucky! You got Hermes' Blessing in the Riddle Event." )
	
} 