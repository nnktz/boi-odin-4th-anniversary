	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013-02
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************

	function OnUseItem(){
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo(-1,"item",44677,2)
		
		
	}