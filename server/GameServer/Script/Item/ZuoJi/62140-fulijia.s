	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/9
	//		Author:??
	//		TaskName:????-?????
	//		TaskID:62135-bulaji.s
	//
	//****************************************	
	
	function OnUseItem(){

		
		$item = 62140
		$rider = 1201

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