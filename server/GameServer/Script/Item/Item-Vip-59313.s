	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	???
	//		TaskName:Item-Vip-59313.s
	//		TaskID:????VIP???
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You need at least 3 open Bag slots." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59313, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63772, 1 )
		AddPlayerInfo( -1, "item", 36507, 1 )
		AddPlayerInfo( -1, "item", 64386, 1 )
		
	}
