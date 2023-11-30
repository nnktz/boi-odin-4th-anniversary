	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/01
	//		Author:???
	//		TaskName:NPC-1205.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		//????4?16?--5?16?
		$nian = GetSystemTime("year")
		$yue = GetSystemTime("month")
		$ri = GetSystemTime("mday")
		$day = GetSystemTime("week")
		
		if $day != 0
			if $day != 6
				DisableNpcOption(1)
			endif
		endif
		
		if $nian != 2013
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $yue != 7
			if $yue != 8
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		
		if $yue == 7
			if $ri < 23
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		
		if $yue == 8
			if $ri > 19
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		
	}
	
	function OnOption0(){
		
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 75
			BC("screen","player",-1,"You must be at least LV75 to participate.")
			return
		endif
		
		$result = IsTaskAccept( -1 , 1931 )
		if $result == 0
			BC( "dialogbox", "player", -1, "You've already accepted Aphrodite's Blessing quest. Return once you have completed it." )
			return
		endif
		
		//??4214 ???? ????
		$Now_Yday =  GetSystemTime( "yday" )
		$last_day = GetPlayerVar(-1,4214)
		if $Now_Yday == $last_day
			BC( "dialogbox", "player", -1, "You have already obtained this. Please come again tomorrow.")
			return
		endif
		
		SetPlayerVar(-1, 4214, $Now_Yday )
		AcceptTask( -1 , 1931 )
		
		
	}
	
	function OnOption0(){
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 75
			BC("screen","player",-1,"You must be at least LV75 to participate.")
			return
		endif
		
		$daoju = GetPlayerInfo(-1,"item",44938)
		if $daoju < 1
			BC("screen","player",-1,"You need more tickets to use this!")
			return
		endif
		
		$jubao = GetPlayerVar(-1,4216)
		if $jubao >= 40
			BC("screen","player",-1,"Each player can exchange for a maximum of 40 Cornucopias.")
			return
		endif
						
		$shu = 0
		$baowu = 44916
		while $shu < 5
			$sub = SubPlayerInfo(-1,"item",44938,1)
			if $sub == 0
				$a = RandomNumber(1,20)
				$tu = $baowu + $a
				AddPlayerInfo(-1,"item",$tu,1)
				$shu = $shu + 1
				$zong = GetPlayerVar(-1,4216)
				$zong = $shu + $zong
				SetPlayerVar(-1,4216,$zong)
			endif
		endwhile
		
		
	}