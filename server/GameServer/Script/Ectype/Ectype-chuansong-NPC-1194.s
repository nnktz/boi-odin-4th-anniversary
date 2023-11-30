	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/05/06
	//		Author:??
	//		TaskName:Ectype-chuansong-NPC-1194.s
	//		TaskID ????????
	//
	//****************************************
	function OnRequest(){
		
	

	}

	function OnOption0(){
	$lv = GetPlayerInfo( -1 , "level" )
		
//--------????30???---------------------------------------
		if $lv < 30
			BC( "dialogbox", "player", -1, "You have to be at least LV30 to be teleported." )
			return
		endif
		FlyToMap( -1  , 153 , 60 , 28 )
		
	}

	function OnOption1(){
	$lv = GetPlayerInfo( -1 , "level" )
		
//--------????30???---------------------------------------
		if $lv < 30
			BC( "dialogbox", "player", -1, "You have to be at least LV30 to be teleported." )
			return
		endif	
		FlyToMap( -1  , 116 , 47 , 33 )
	
	}