	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-2-20
	//		Author:??
	//		TaskName:
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 7
			BC( "screen", "player", -1, "Insufficient space in your bag. Please try again after clearing it out." )
			return
		endif
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots! Please try again after clearing." )
			return
		endif
//352	v3.85	??????45?
//353	v3.86	??????60?
//354	v3.87	??????75?
//355	v3.88	??????90?
//356	v3.89	??????100?
		
		$level = GetPlayerInfo(-1,"level")
		$level45 = GetPlayerVar(-1,352)
		$level60 = GetPlayerVar(-1,353)
		$level75 = GetPlayerVar(-1,354)		
		$level90 = GetPlayerVar(-1,355)	
		$level100 = GetPlayerVar(-1,356)
		if $level < 45
			BC( "screen", "player", -1, "Must be at least LV45 to open!" )
			return
		endif
		if $level45 == 0
			AddPlayerInfo(-1,"item",9,20)
			AddPlayerInfo(-1,"item",2221,5)
			AddPlayerInfo(-1,"item",2337,1)
			SetPlayerVar(-1,352,1)
		endif
		if $level < 60
			BC( "screen", "player", -1, "You have received LV45 gift. You need to reach LV60 to receive the next level gift!" )
			return
		endif
		if $level60 == 0
			AddPlayerInfo(-1,"item",59839,8)
			AddPlayerInfo(-1,"item",2211,8)
			SetPlayerVar(-1,353,1)
		endif
		if $level < 75
			BC( "screen", "player", -1, "You have received LV60 gift. You need to reach LV75 to receive the next level gift!" )
			return
		endif
		if $level75 == 0
			AddPlayerInfo(-1,"item",9,30)
			AddPlayerInfo(-1,"item",2221,10)
			AddPlayerInfo(-1,"item",2338,1)
			SetPlayerVar(-1,354,1)	
		endif
		if $level < 90
			BC( "screen", "player", -1, "You have received LV75 gift. You need to reach LV90 to receive the next level gift!" )
			return
		endif
		if $level90 == 0
			AddPlayerInfo(-1,"item",59840,2)
			AddPlayerInfo(-1,"item",2211,2)
			SetPlayerVar(-1,355,1)
		endif
		if $level < 100
			BC( "screen", "player", -1, "You have received LV90 gift. You need to reach LV100 to receive the next level gift!" )
			return
		endif
		if $level100 == 0
			AddPlayerInfo(-1,"item",2340,1)
			SubPlayerInfo(-1,"item",44704,1)
			SetPlayerVar(-1,356,1)
		endif

	}