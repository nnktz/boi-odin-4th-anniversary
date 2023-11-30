	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:??
	//		TaskName:Item-heer44497.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 44497 )
		if $Item < 5
			BC( "dialogbox", "player", -1, "It takes 5 Seals of Hel to combine into a Hel's Fury!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44497, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62138 , 1 )
		#name = GetPlayerInfo(-1,"name")
		BC("screen","servergroup",-1,"Player ",#name," used Seal of Hel and combined into a Hel's Fury!")
		BC("chat","servergroup",-1,"Player ",#name," used Seal of Hel and combined into a Hel's Fury!")
		
	}