  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/21
	//		Author:???
	//		TaskName:ItemCard-54142
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$HorN = HaveTarot( -1 , 10133 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card! ")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54142 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 10133 )
			endif
		endif
		
	}