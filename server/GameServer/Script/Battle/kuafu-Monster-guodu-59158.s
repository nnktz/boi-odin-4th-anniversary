	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59158.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1,259)
		$camp = GetBattleCamp( $ectype_ID , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59157, 1 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			return
		endif
		
		
		if $ectype_ID == 0
			return
		endif	
		
		#resname = SwapResourcePoint( $id , 59160 , 2 )
		BC( "screen", "map", $ectype_ID , "Sol occupies ", #resname, "." )
		
		AddMonsterByFloat ( 59097 , 2 ,$ectype_ID , 153 , 174 , 2 )
		
	}