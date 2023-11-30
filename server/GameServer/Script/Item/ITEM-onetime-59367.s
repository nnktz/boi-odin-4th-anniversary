	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-24
	//		Author:??
	//		TaskName:ITEM-onetime-59367.s
	//		TaskID:????????????
	//
	//****************************************
	
	function OnUseItem(){
	

		//267
		//268
		//269
		$getvar = GetPlayerVar(-1,269)
		if $getvar == 1
			return
		endif
		SetPlayerVar(-1,269,1)
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		if $bag_count2 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59367, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 9 , 60 )
		AddPlayerInfo( -1 , "item" , 2221 , 10 )
		AddPlayerInfo( -1 , "item" , 2338 , 1 )
		
	}
		