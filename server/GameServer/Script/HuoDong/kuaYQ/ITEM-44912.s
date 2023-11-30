	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/06/08
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44912.s
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
		
		$fly = FlyToMap(-1,582,64,66,0)
		if $fly == 0
			AddStatus(-1,11907,1)
			AddStatus(-1,6362,1)
			AddStatus(-1,6372,1)
		endif
	}
			
		
		
		