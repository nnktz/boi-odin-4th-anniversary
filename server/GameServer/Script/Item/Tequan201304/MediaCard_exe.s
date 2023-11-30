 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ?????
 //****************************  
 
	function OnUseItem(){ 
	
		$itemid = GetItemID()
		if $itemid < 44795
			return
		endif
		if $itemid > 44842
			return
		endif
		
		$itemadd_1 = 0
		$itemcc_1 = 1
		$itemadd_2 = 0
		$itemcc_2 = 1
		call Checkitem()
		
		if $sort == 0
			call CheckUse()
			if $used == 1
				return
			endif
		endif
		
	  $level = GetPlayerInfo( -1, "level" )
	  if $level < $levelp
			BC("screen","player",-1,"You haven't reached LV",$levelp,", unable to use the Prestige Card!" )
			return
	  endif
	  
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < $itemCNT
			BC("screen","player",-1,"Insufficient bag slots ",$itemCNT,"!")
			return
		endif
		
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		
		if $itemNEXT > 0
			AddPlayerInfo(-1,"item",$itemNEXT,1)
		else
//			44861	????"??"(????)
			AddPlayerInfo(-1,"item",44861,1)
		endif
		if $itemadd_1 > 0
			AddPlayerInfo(-1,"item",$itemadd_1,$itemcc_1)
		else
			BC("messagebox","player",-1,"Error! Please do not use cheats or hacks!")
		endif
		if $itemadd_2 > 0
			AddPlayerInfo(-1,"item",$itemadd_2,$itemcc_2)
		endif
		SetPlayerVar(-1,389,1)
		
	} 

	function CheckUse(){
		
	  $is_rookie = GetPlayerVar(-1,393)
	  if $is_rookie == 1
	     BC("screen", "player", -1, "You've already received a BOI Rookie Divine Chest. You can only open it once.")
	     BC("chat", "player", -1, "You've already received a BOI Rookie Divine Chest. You can only open it once.")
	     $used = 1
	     return
	  endif
		
		$MC_used = GetPlayerVar(-1,389)
		if $MC_used == 1
			BC("screen","player",-1,"You've already used an Anniversary Celebration Media Card. You can only use one of each type!")
			BC("chat", "player", -1, "You've already used an Anniversary Celebration Media Card. You can only use one of each type!")
	     $used = 1
			return
		endif
	  
	}


	function Checkitem(){
		
		$itemidinfo = $itemid - 44795
		
		$kind = $itemidinfo / 6
		$sort = $itemidinfo % 6
//		BC("chat","player",-1,"|kind=",$kind,"|sort=",$sort)
		//-----------------------------------------
		if $sort == 0
			$levelp = 10
		  $gender = GetPlayerInfo(-1,"sex")
		  //0-male,1-female  36133
		  $kindadd = $kind * 4
		  $itemadd_1 = 36133 + $kindadd
		  $itemadd_1 -= $gender
		  $itemCNT = 1
		endif
		//-----------------------------------------
		if $sort == 1
			$levelp = 20
		  $gender = GetPlayerInfo(-1,"sex")
			//36150	????(?)
			//36151	????(?)
			$itemadd_1 = 36151 - $gender
		  $itemCNT = 1
		endif
		//-----------------------------------------
		if $sort == 2
			$levelp = 25
//62112	??????17173????
			if $kind == 0
				$itemadd_1 = 62112
			endif
//62598	?????????????
			if $kind == 1
				$itemadd_1 = 62598
			endif
//62599	?????????????
			if $kind == 2
				$itemadd_1 = 62599
			endif
//62599	?????????????
			if $kind == 3
				$itemadd_1 = 62599
			endif
//62570	???????????
			if $kind == 4
				$itemadd_1 = 62570
			endif
//62570	???????????
			if $kind == 5
				$itemadd_1 = 62570
			endif
//62570	???????????
			if $kind == 6
				$itemadd_1 = 62570
			endif
//62570	???????????
			if $kind == 7
				$itemadd_1 = 62570
			endif
		  $itemCNT = 1
		endif
		//-----------------------------------------
		if $sort == 3
			$levelp = 30
//21202	?????
			$itemadd_1 = 21202
		  $itemCNT = 1
		endif
		//-----------------------------------------
		if $sort == 4
			$levelp = 40
//44361	????*10
//6066	??????(??)
			$itemadd_1 = 44361
			$itemcc_1 = 10
			$itemadd_2 = 6066
		  $itemCNT = 2
		endif
		//-----------------------------------------
		$itemNEXT = $itemid + 1
		if $sort == 5
			$levelp = 50
//64402	?????(??)*3
//59838	?????
			$itemadd_1 = 64402
			$itemcc_1 = 3
			$itemadd_2 = 59838
		  $itemCNT = 2
		  $itemNEXT = 0
		endif
		//-----------------------------------------
		
	}
	

	
//36132	17173????(?)
//36133	17173????(?)
//	
//36136	????????(?)
//36137	????????(?)
//	
//36140	????????(?)
//36141	????????(?)
//	
//36144	????????(?)
//36145	????????(?)
//	
//36148	????(?)
//36149	????(?)
//	
//36152	??????(?)
//36153	??????(?)
//	
//36156	??????(?)
//36157	??????(?)
//	
//36160	360????(?)
//36161	360????(?)
