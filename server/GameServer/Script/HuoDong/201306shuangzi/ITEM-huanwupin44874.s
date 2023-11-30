	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/05/07
	//		Author:??
	//		TaskName:ITEM-huanwupin44874.s
	//		TaskID:???????????---2013????????
	//
	//****************************************
	
	function OnUseItem(){

		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 empty slot in your bag." )
			return
		endif
		
		//???????
		$count = GetPlayerInfo( -1, "item", 44874 )
		if 	$count < 2
			BC( "screen", "player", -1, "Requires at least 2 fragments to make." )
			return
		endif
		
		//??????
		SubPlayerInfo( -1, "item", 44874, 2)
		//??????
		AddPlayerInfo( -1, "item", 44873, 1 )
		BC( "screen", "player", -1, "You got a Sealed Painted Egg!" )
		
		
	}