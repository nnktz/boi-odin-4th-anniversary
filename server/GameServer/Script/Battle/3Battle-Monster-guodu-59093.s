	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:3Battle-Monster-guodu-59093.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 256 , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59092, 1 )
			BC( "screen", "map", 256 , #name, " is attempting to re-capture the ", #resname, ". It will be occupied completely in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59095 , 2 )
		BC( "screen", "map", 256 , "Chaosflame occupies ", #resname, "." )
		
		AddMonster( 59097 , 2 ,256 , 66 , 41 , 1 )
		
	}