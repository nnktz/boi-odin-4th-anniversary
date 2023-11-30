  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11
	//		???
	//		TaskName:54309-GodsCard-S
	//		
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$HorN = HaveTarot( -1 , 12503 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54309 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 12503 )
			endif
		endif
		
		
	}