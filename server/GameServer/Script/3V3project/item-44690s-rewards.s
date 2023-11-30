	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013-02
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnUseItem(){
		
		$itemslot = 999
		$playerid = GetPlayerID()
		
		$itemid = GetItemID()
//		BC("chat","player",-1,"|itemid=",$itemid)
		if $itemid >= 44690	
			if $itemid <= 44696	
				$itemslot = 4
			endif
		endif
		if $itemid >= 44697
			if $itemid <= 44699	
				$itemslot = 3
			endif
		endif
		if $itemid == 44868	
			$itemslot = 2
		endif
		if $itemid == 44700	
			$itemslot = 1
		endif
		
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < $itemslot
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
			
		if $itemid == 44690	
			AddPlayerInfo(-1,"item",44677,10)
			AddPlayerInfo(-1,"item",5554,1)
			AddPlayerInfo(-1,"item",59839,1)
			AddPlayerInfo(-1,"item",44678,1)
		endif	
		if $itemid == 44691	
			AddPlayerInfo(-1,"item",44677,9)
			AddPlayerInfo(-1,"item",5554,1)
			AddPlayerInfo(-1,"item",59839,1)
			AddPlayerInfo(-1,"item",44678,1)
		endif	
		if $itemid == 44692	
			AddPlayerInfo(-1,"item",44677,8)
			AddPlayerInfo(-1,"item",5554,1)
			AddPlayerInfo(-1,"item",59839,1)
			AddPlayerInfo(-1,"item",44678,1)
		endif	
		if $itemid == 44693	
			AddPlayerInfo(-1,"item",44677,7)
			AddPlayerInfo(-1,"item",5554,1)
			AddPlayerInfo(-1,"item",59839,1)
			AddPlayerInfo(-1,"item",44678,1)
		endif	
		if $itemid == 44694	
			AddPlayerInfo(-1,"item",44677,6)
			AddPlayerInfo(-1,"item",5554,1)
			AddPlayerInfo(-1,"item",59839,1)
			AddPlayerInfo(-1,"item",44678,1)
		endif	
		if $itemid == 44695	
			AddPlayerInfo(-1,"item",44677,5)
			AddPlayerInfo(-1,"item",5554,1)
			AddPlayerInfo(-1,"item",59839,1)
			AddPlayerInfo(-1,"item",44678,1)
		endif	
		if $itemid == 44696	
			AddPlayerInfo(-1,"item",44677,4)
			AddPlayerInfo(-1,"item",5554,1)
			AddPlayerInfo(-1,"item",59839,1)
			AddPlayerInfo(-1,"item",44678,1)
		endif	
		if $itemid == 44697	
			AddPlayerInfo(-1,"item",44677,3)
			AddPlayerInfo(-1,"item",59839,1)
			AddPlayerInfo(-1,"item",44678,1)
			
		endif	
		if $itemid == 44698	
			AddPlayerInfo(-1,"item",44677,2)
			AddPlayerInfo(-1,"item",59838,2)
			AddPlayerInfo(-1,"item",44678,1)
			
		endif	
		if $itemid == 44699	
			AddPlayerInfo(-1,"item",44677,1)
			AddPlayerInfo(-1,"item",59838,1)
			AddPlayerInfo(-1,"item",44678,1)
			
		endif	
		if $itemid == 44700	
			AddPlayerInfo(-1,"item",44678,1)
			
			
			
		endif	
		if $itemid == 44868	
			AddPlayerInfo(-1,"item",44677,1)
			AddPlayerInfo(-1,"item",44678,1)
			
			
		endif	


		
	}