 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/5/9
	//		Author:???
	//		TaskName:ITEM-trump-baihu-59823.s
	//		TaskID:????  ??
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level")
		if $level < 100
			BC( "screen", "player", -1, "You must reach LV100 before you can control the power of the White Tiger Might." )
			return
		endif
		$info1 = AddTrump( -1, 11022, 1 )
		if $info1 != 0
			BC( "screen", "player", -1, "You have already had it." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" ,59823, 1 )
		if  $info != 0
			return
		endif
		
		BC( "screen", "player", -1, "You have acquired a White Tiger Might." )
		
	}