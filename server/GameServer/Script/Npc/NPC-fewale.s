	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??-???
	//		TaskID:
	//****************************************
	
	
	function OnRequest(){
		
		
		
	}
	
	function OnOption0(){
		
//		AddPlayerInfo( -1, "item" , 36563 , 1 )
//		AddPlayerInfo( -1, "item" , 36599 , 1 )
		$item = GetPlayerInfo(-1,"item",36563)
		if $item < 1
			BC("screen","player",-1,"You don't have the time-limited Great Adventurere Mantle!")
			return
		endif
		
		$itemid = 36563
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo(-1,"item",36599,1)
		BC("screen","player",-1,"Exchange succeeds!")
		
	}