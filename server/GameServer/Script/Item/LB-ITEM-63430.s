	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/09
	//		Author:???
	//		TaskName:LB-ITEM-63430.s
	//		TaskID:???????(?)
	//
	//****************************************
	
	function OnUseItem(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 11
			BC( "dialogbox", "player", -1, "You need 11 empty bag slots." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63430 )
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63430, 1 )
		if $SubItem1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 5123, 2 )
		AddPlayerInfo( -1, "item", 5003, 2 )
		AddPlayerInfo( -1, "item", 5043, 1 )
		AddPlayerInfo( -1, "item", 2212, 5 )
		AddPlayerInfo( -1, "item", 60039, 8 )
		return
		
	}