	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Item-64409.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
	$GetExp = GetExpAddonTime(-1 , 0)
	if $GetExp >= 81000
	  BC( "screen", "player", -1, "Double EXP duration capacity is full. Cannot buy any more." )
	  return
	endif
		$nfo = SubPlayerInfo ( -1 , "item" , 64409 , 1 )
		if $nfo != 0
			return
		endif
		AddExpAddons( -1 , 3600 , 0 )
		BC( "screen", "player", -1, "You gain double EXP for 1 hour." )
		
	}

