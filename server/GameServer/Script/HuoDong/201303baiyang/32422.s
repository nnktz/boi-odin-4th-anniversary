 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: ???? 
 //****************************  
	function OnDead(){
		
		DropMonsterItems(-1, 90264 )
		$var = GetGlobalVar(88)
		$var = $var + 1
		SetGlobalVar(88,$var)
		$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Yday <= 74
			BC("screen","map",6,"Ares' Blessing is in progress.",$var,"/100")
		endif
		if $Now_Yday > 74
			BC("screen","map",6,"Ares' Blessing is in progress.",$var,"/150")
		endif
		 
} 
