 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12/6
	//		Author:???
	//		TaskName:ITEM-baitan-zahuo-44130.s
	//		TaskID:???? ??
	//****************************************
	
	function OnUseItem(){
	
		$del = SubPlayerInfo ( -1,"item",44130,1 )
		if  $del != 0
			return
		endif
		AddStatus(-1,11934,1)
		BC( "screen", "player", -1, "Your vending decoration has been changed!" )
	}