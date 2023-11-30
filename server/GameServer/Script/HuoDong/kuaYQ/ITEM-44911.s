	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/06/08
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44911.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$line = GetServerLineID()
		if $line != 7
			BC("screen","player",-1,"The item is useable in Realm 7 only!")
			return
		endif
		
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		
		
		DeleteMonster(582,55390)
		SetServerVar(415,0)
		MapPlayerFlyToMap( 582, 475 , 68, 48 )
		
	}
			
		
		
		