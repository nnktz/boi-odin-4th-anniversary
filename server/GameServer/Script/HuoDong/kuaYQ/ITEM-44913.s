	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/06/08
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44913.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$line = GetServerLineID()
		if $line != 7
			BC("screen","player",-1,"The item is useable in Realm 7 only!")
			return
		endif
		
		$kai = GetServerVar(415)
		if $kai != 1
			BC("screen","player",-1,"The Interserver Tournament hasn't activated yet. Unable to use this item!")
			return
		endif
		
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		
		
		
		if $kai == 1
			$fly = FlyToMap(-1,582,59,65,0)
			if $fly == 0
				BC("screen","player",-1,"Welcome to the Interserver Map!")
				AddStatus(-1,21629,1)
				AddPlayerInfo(-1,"item",6689,10)
				AddPlayerInfo(-1,"item",6690,10)
			endif
		endif
	}
			
		
		
		