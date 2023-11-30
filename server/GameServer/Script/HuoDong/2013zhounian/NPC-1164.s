	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/01
	//		Author:???
	//		TaskName:NPC-1164.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		//????4?16?--5?16?
		$nian = GetSystemTime("year")
		$yue = GetSystemTime("month")
		$ri = GetSystemTime("mday")
		
		if $nian != 2013
			DisableNpcOption(0)
			//DisableNpcOption(1)
		endif
		
		if $yue != 4
			if $yue != 5
				DisableNpcOption(0)
				//DisableNpcOption(1)
			endif
		endif
		
		if $yue == 4
			if $ri < 16
				DisableNpcOption(0)
				//DisableNpcOption(1)
			endif
		endif
		
		if $yue == 5
			if $ri > 16
				DisableNpcOption(0)
				//DisableNpcOption(1)
			endif
		endif
		
	}
	
	function OnOption0(){
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 75
			BC("screen","player",-1,"You must be at least LV75 to participate.")
			return
		endif
		
		$result = IsTaskAccept( -1 , 1899 )
		if $result == 0
			BC( "dialogbox", "player", -1, "You've already accepted Aphrodite's Blessing quest. Complete it and then come back here!" )
			return
		endif
		
		//??4204 ???? ????
		$Now_Yday =  GetSystemTime( "yday" )
		$last_day = GetPlayerVar(-1,4204)
		if $Now_Yday == $last_day
			BC( "dialogbox", "player", -1, "You have already obtained this. Please come again tomorrow.")
			return
		endif
		
		SetPlayerVar(-1, 4204, $Now_Yday )
		AcceptTask( -1 , 1899 )
		
	}