	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/10
	//		Author:??
	//		TaskName:Battle-Monster-59289.s
	//		TaskID: ??????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$charID = GetMonsterCharID()
		$mapid = GetMonsterMapID($charID)
		#name = GetPlayerInfo( -1 , "name" )
		
		#resname = SwapResourcePoint( $id , 59288 , 2 )
		BC( "screen", "map", $mapid , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds." )
		
	}