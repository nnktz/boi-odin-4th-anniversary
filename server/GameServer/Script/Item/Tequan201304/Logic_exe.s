 //****************************
 //  Copyright:PERFECT WORLD
 //  Modified:2012
 //  Author:???
 //  TaskName: ?????????
 //****************************
function OnUseItem(){

	$itemid = GetItemID()
	if $itemid < 44849
		return
	endif
	if $itemid > 44854
		return
	endif


	if $itemid == 44849
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"You need at least 2 empty slots in your bag!")
			return
		endif
		$MC_used = GetPlayerVar(-1,391)
		if $MC_used == 1
			BC("screen","player",-1,"You've already used an Anniversary Celebration Logitech Pack. You can only use one of each type!")
			BC("chat", "player", -1, "You've already used an Anniversary Celebration Logitech Pack. You can only use one of each type!")
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
		SetPlayerVar(-1,391,1)
		$itemid += 1
		AddPlayerInfo(-1,"item",$itemid,1)
//5	6455	?????	6457	?????
		$profession = GetPlayerInfo($playerid,"profession")
		if $profession <= 3
			AddPlayerInfo(-1,"item",6455,5)
		else
			AddPlayerInfo(-1,"item",6457,5)
		endif
//5	6459	???????
		AddPlayerInfo(-1,"item",6459,5)
		return
	endif

	if $itemid == 44850
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"You need at least 2 empty slots in your bag!")
			return
		endif
		$levelp = 20
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
//5	6464	???????
		AddPlayerInfo(-1,"item",6464,5)
//3	59838	?????
		AddPlayerInfo(-1,"item",59838,3)
		return
	endif

	if $itemid == 44851
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"You need at least 2 empty slots in your bag!")
			return
		endif
		$levelp = 30
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
//1	37051	????
		AddPlayerInfo(-1,"item",37051,1)
//1	59670	?????(1000?)
		AddPlayerInfo(-1,"item",59670,1)
		return
	endif

	if $itemid == 44852
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"You need at least 2 empty slots in your bag!")
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
//1	62607	????????????
		AddPlayerInfo(-1,"item",62607,1)
//10	6688	?????????
		AddPlayerInfo(-1,"item",6688,10)
		return
	endif

	if $itemid == 44853
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 3
			BC("screen","player",-1,"You need at least 3 empty slots in your bag!")
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
		$itemid += 1
		AddPlayerInfo(-1,"item",$itemid,1)
//1	59838	?????
		AddPlayerInfo(-1,"item",59838,1)
//1	59670	?????(1000?)
		AddPlayerInfo(-1,"item",59670,1)
//10	44361	????
		AddPlayerInfo(-1,"item",44361,10)
		return
	endif

	if $itemid == 44854
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 3
			BC("screen","player",-1,"You need at least 3 empty slots in your bag!")
			return
		endif
		$levelp = 60
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
//1	71	????
		AddPlayerInfo(-1,"item",71,1)
//1	62128	??????????
		AddPlayerInfo(-1,"item",62128,1)
//2	9	??????
		AddPlayerInfo(-1,"item",9,2)
		return
	endif


}

