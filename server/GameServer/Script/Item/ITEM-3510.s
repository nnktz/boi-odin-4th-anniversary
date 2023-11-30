	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-3510.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$item = GetPlayerInfo(-1,"item",3510)
		if $item > 0
			$result = SubPlayerInfo(-1,"item",3510,1)
			if $result == 0
				AddPlayerInfo(-1,"item",3501,1)
				AddPlayerInfo(-1,"item",3507,1)
			endif
		endif
		
	}
			
		
		
		