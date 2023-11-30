	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-3-14
	//		Author:??
	//		TaskName:
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		$itemid = 44756
		$n = GetPlayerVar(-1,361)
		if $n == 1
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient space in your bag. Please try again after clearing it out." )
			return
		endif		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots! Please try again after clearing." )
			return
		endif
		SubPlayerInfo(-1,"item",$itemid,1)
		$var = GetServerGrade()
		if $var < 5	
			AddPlayerInfo(-1,"item",59839,2)
			AddPlayerInfo(-1,"item",9,6)
			AddPlayerInfo(-1,"item",44757,1)
		endif
		if $var >= 5
			AddPlayerInfo(-1,"item",59840,1)
			AddPlayerInfo(-1,"item",9,12)
			AddPlayerInfo(-1,"item",44757,1)
		endif
		SetPlayerVar(-1,361,1)
	}