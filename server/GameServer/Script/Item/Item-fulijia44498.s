	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:??
	//		TaskName:Item-fulijia44498.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 44498 )
		if $Item < 5
			BC( "dialogbox", "player", -1, "It takes 5 Seals of Frigga to combine into a Frigga's Light!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44498, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62139 , 1 )
		#name = GetPlayerInfo(-1,"name")
		BC("screen","servergroup",-1,"Player ",#name," used Seal of Frigga and combined into a Frigga's Light!")
		BC("chat","servergroup",-1,"Player ",#name," used Seal of Frigga and combined into a Frigga's Light!")
		
	}