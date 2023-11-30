  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/04
	//		???
	//		TaskName:ItemCard-54302
	//		
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$HorN = HaveTarot( -1 , 2551 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54302 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 2551 )
			endif
		endif
		
		
		
	}