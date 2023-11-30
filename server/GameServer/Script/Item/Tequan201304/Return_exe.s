//****************************  
//  Copyright:PERFECT WORLD  
//  Modified:2012  
//  Author:???  
//  TaskName: ????????
//****************************  
function OnUseItem(){ 
	
	$itemid = GetItemID()
	if $itemid < 44843
		return
	endif
	if $itemid > 44845
		return
	endif
		
	if $itemid == 44843
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 5
			BC("screen","player",-1,"You need at least 5 empty slots in your bag!")
			return
		endif
		$MC_used = GetPlayerVar(-1,390)
		if $MC_used == 1
			BC("screen","player",-1,"You've already used an Anniversary Celebration Return Pack. You can only use one of each type!")
			BC("chat", "player", -1, "You've already used an Anniversary Celebration Return Pack. You can only use one of each type!")
			return
		endif
		$levelp = 10
	  $level = GetPlayerInfo( -1, "level" )
	  if $level < $levelp
			BC("screen","player",-1,"You have to reach LV",$levelp," before you can use this Celestial Prestige Chest!" )
			return
	  endif
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		SetPlayerVar(-1,390,1)
		$itemid += 1
		AddPlayerInfo(-1,"item",$itemid,1)
//37050 ???????
		AddPlayerInfo(-1,"item",37050,1)
//62600 ????(???)
		AddPlayerInfo(-1,"item",62600,1)
//44361 ????*10(?)
		AddPlayerInfo(-1,"item",44361,10)
//59141 ?????200*1
		AddPlayerInfo(-1,"item",59141,1)
//59080 2????*2(??)
		AddPlayerInfo(-1,"item",59080,2)
		return
	endif
	
	if $itemid == 44844
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"You need 2 bag slots.")
			return
		endif
		$levelp = 40
	  $level = GetPlayerInfo( -1, "level" )
	  if $level < $levelp
			BC("screen","player",-1,"You have to reach LV",$levelp," before you can use this Celestial Prestige Chest!" )
			return
	  endif
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		$itemid += 1
		AddPlayerInfo(-1,"item",$itemid,1)
//44361 ????*10(?)
		AddPlayerInfo(-1,"item",44361,10)
//6066 ??????*2
		AddPlayerInfo(-1,"item",6066,2)
		return
	endif
	
	if $itemid == 44845
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"You need at least 1 empty slots in your bag!")
			return
		endif
		$levelp = 50
	  $level = GetPlayerInfo( -1, "level" )
	  if $level < $levelp
			BC("screen","player",-1,"You have to reach LV",$levelp," before you can use this Celestial Prestige Chest!" )
			return
	  endif
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
//64402 ?????1?? *3
		AddPlayerInfo(-1,"item",64402,3)
//9 ??????*3
		AddPlayerInfo(-1,"item",9,3)
		return
	endif

} 

