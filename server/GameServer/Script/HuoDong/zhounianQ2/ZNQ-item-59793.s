	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************
	//59790	????????
	//59791	??????
	//59792	????
	//59793	????
	//59794	????
	
	function OnUseItem(){
		
		$time = GetPlayerVar( -1 , 4050 )
		$nowtime = GetSystemTime( "yday" )
		if $time == $nowtime
			BC( "screen", "player", -1, "The Dark Orb is used once a day." )
			return
		endif
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 80
			BC( "screen", "player", -1, "Requires LV80!" )
			return
		endif
		
		$result = SubPlayerInfo( -1 , "item" , 59793 , 1 )
		if $result != 0
			return
		endif
		SetPlayerVar( -1 , 4050 , $nowtime )
		AddStatus( -1, 7631, 1 )
		BC( "screen", "player", -1, "You have obtained the Dark Orb's Strength." )
		
	}