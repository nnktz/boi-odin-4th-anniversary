	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/06/08
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44916.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$line = GetServerLineID()
		if $line != 7
			BC("screen","player",-1,"The item is useable in Realm 7 only!")
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 15
			BC( "screen", "player", -1, "You need at least 15 empty bag slots." )
			return
		endif
		
//		$itemid = GetItemID()
//		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
//		if $del_count != 0
//			return
//		endif
		
		AddPlayerInfo(-1,"item",44910,1)
		AddPlayerInfo(-1,"item",44911,1)
		AddPlayerInfo(-1,"item",44912,1)
		AddPlayerInfo(-1,"item",44913,6)
		AddPlayerInfo(-1,"item",44914,6)
	}
			
		
		
		