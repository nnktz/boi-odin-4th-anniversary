	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/7
	//		Author:??
	//		TaskName:?????
	//		TaskID:62156-sileipuniya.s
	//
	//****************************************	
	
	function OnUseItem(){

		
		$item = 62156
		$rider = 75

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