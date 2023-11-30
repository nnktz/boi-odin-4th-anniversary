 	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2013/03/21
	//		Author：周志强
	//		TaskName：小怪
	//		TaskID：吞噬之源的阴谋活动
	//****************************************
	
	function OnDead(){
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapposx")
		$y = GetPlayerInfo( -1, "mapposy")
		AddMonsterByFloat( 32438 , 1 , $mapid , $x , $y , 0 )
	
	}