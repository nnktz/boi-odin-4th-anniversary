	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:??
	//		TaskName:Item-44613-yuangujinbi.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){	
		$pre = GetPlayerInfo(-1,"prestige",48)
		if $pre > 1000000
			BC("screen","player",-1,"Your Honor is too high. Please consume this item first!")
			return
		endif
		$num = GetPlayerInfo(-1,"item",44613)
		$Sub = SubPlayerInfo( -1, "item", 44613, $num )
		if $Sub != 0
			return
		endif
		AddPlayerInfo(-1,"prestige",48,$num)
		BC("screen","player",-1,"Ancient Glory Increases",$num," points")
	}