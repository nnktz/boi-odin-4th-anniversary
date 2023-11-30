	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-3-14
	//		Author:??
	//		TaskName:
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		$itemid = 44754
		$n = GetPlayerVar(-1,359)
		if $n == 1
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
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
		AddPlayerInfo(-1,"item",9,100)
		AddPlayerInfo(-1,"item",2221,20)
		AddPlayerInfo(-1,"item",2340,1)
		SetPlayerVar(-1,359,1)
	}