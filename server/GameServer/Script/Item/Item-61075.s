	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/24
	//		Author:???
	//		TaskName:Item-61075.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Item = GetPlayerInfo( -1, "item", 61075 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 61075, 1 )
		if $Sub != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 61073, 3 )
		
	}