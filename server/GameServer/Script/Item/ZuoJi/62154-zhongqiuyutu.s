	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-6-8
	//		Author:??
	//		TaskName:??
	//		TaskID:Script\Item\ZuoJi\62154-zhongqiuyutu.s

	//
	//****************************************	
	
	function OnUseItem(){

		
		$item = 62154
		$rider = 95

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