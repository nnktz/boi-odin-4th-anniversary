 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/29
	//		Author:???
	//		TaskName:ITEM-baitan-baoshi-63333.s
	//		TaskID:???? ??
	//****************************************
	
	function OnUseItem(){
	
		$del = SubPlayerInfo ( -1,"item",63333,1 )
		if  $del != 0
			return
		endif
		AddStatus(-1,11937,1)
		BC( "screen", "player", -1, "Your vending decoration has been changed!" )
	}