	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-3-14
	//		Author:??
	//		TaskName:
	//		TaskID:44867
	//****************************************
	
	function OnUseItem(){
		$subid = 44867
		$addid1 = 9
		$addnum1 = 6
		$addid2 = 2221
		$addnum2 = 6		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your bag. Please try again after clearing it out." )
			return
		endif		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots! Please try again after clearing." )
			return
		endif	
		SubPlayerInfo(-1,"item",$subid,1)	
		AddPlayerInfo(-1,"item",$addid1,$addnum1)
		AddPlayerInfo(-1,"item",$addid2,$addnum2)

	}