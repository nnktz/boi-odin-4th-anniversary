	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/7
	//		Author:??
	//		TaskName:????-????
	//		TaskID:62150-chunriqingyu.s
	//
	//****************************************	
	
	function OnUseItem(){

		
		$item = 62150
		$rider = 1233

		$r = AddRider(-1,$rider)
			if $r != 0
				BC( "screen", "player", -1, "Failed to add to mount list" )
				return
			endif
			
		$revaluet = SubPlayerInfo( -1, "item", $item, 1 )
			if $revaluet != 0
				BC( "screen", "player", -1, "Failed to add to mount list" )
				return
			endif
		
		BC( "screen", "player", -1, "Mount added to mount list!" )
			
	
}