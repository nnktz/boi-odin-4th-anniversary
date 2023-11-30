	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-6-18
	//		Author:??
	//		TaskName:????-???
	//		TaskID:62157-juxiezuo.s
	//
	//****************************************	
	
	function OnUseItem(){

		
    $item = GetItemID()
		$rider = 1253
    
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