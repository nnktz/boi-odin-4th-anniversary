  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/04
	//		???
	//		TaskName:ItemCard-54304
	//		
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$HorN = HaveTarot( -1 , 22551 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54304 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 22551 )
			endif
		endif
		
		
		
	}