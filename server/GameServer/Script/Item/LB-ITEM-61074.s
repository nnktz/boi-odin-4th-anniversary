	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/09
	//		Author:???
	//		TaskName:LB-ITEM-61074.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 61074 )
		if $item1 < 5
			BC( "dialogbox", "player", -1, "You need 5 Basic Soulgems(big)." )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 61074, 5 )
		if $SubItem1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 61078, 1 )
		return
		
	}