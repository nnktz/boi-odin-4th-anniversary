	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/01/05
	//		Author:???
	//		TaskName:ITEM-59155.s
	//		TaskID:59155
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
    
		$del_count = SubPlayerInfo( -1, "item", 59155, 1 )
		//??????????
		
		if $del_count != 0
			return
		endif
	
		AddPlayerInfo( -1, "item", 59193, 3 )
					
	}
