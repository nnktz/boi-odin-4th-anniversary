	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/27
	//		Author:???
	//		TaskName:HD-xianglian-ITEM-12157.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$task0 = IsTaskAccept( -1, 91 )
		if $task0 == 1
			BC( "screen", "player", -1, "You haven't taken the quest Wraith." )
			return
		endif
		
		$player0 = GetPlayerInfo( -1, mapid )
		$player1 = GetPlayerInfo( -1, mapposx )
		$player2 = GetPlayerInfo( -1, mapposy )
		if $player0 != 3
			BC( "screen", "player", -1, "Available only in Aegean North." )
			return
		endif
		
		if $player1 < 126
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		if $player1 > 136
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		
		if $player2 < 111
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		if $player2 > 121
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		
		//$result = SubPlayerInfo( -1, "item", 12157, 1 )
		//if $result != 0
			//return
		//endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" ) 
		AddMonster( 30166, 1, 3 , 51, 47, 1 )
		
	}