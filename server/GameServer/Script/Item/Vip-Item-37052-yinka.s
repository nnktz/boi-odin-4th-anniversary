	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/6/23
	//		Author:??
	//		TaskName:Vip-Item-37052-yinka.s
	//		TaskID:vip????  
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You need at least 3 empty Bag slots." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 37052, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//??
		AddPlayerInfo( -1, "item", 37061, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		//??vip???
		AddPlayerInfo( -1, "item", 44427, 1 )		
	}
