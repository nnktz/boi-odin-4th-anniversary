 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ?????????
 //****************************  
function OnUseItem(){ 
	
	$itemid = GetItemID()
	if $itemid < 44846
		return
	endif
	if $itemid > 44848
		return
	endif

	if $itemid == 44846
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 3
			BC("screen","player",-1,"You need at least 3 empty slots in your bag!")
			return
		endif
		$MC_used = GetPlayerVar(-1,392)
		if $MC_used == 1
			BC("screen","player",-1,"You've already used an Anniversary Celebration Guild Pack. You can only use one of each type!")
			BC("chat", "player", -1, "You've already used an Anniversary Celebration Guild Pack. You can only use one of each type!")
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
		SetPlayerVar(-1,392,1)
		$itemid += 1
		AddPlayerInfo(-1,"item",$itemid,1)
//?????*2		59838
		AddPlayerInfo(-1,"item",59838,2)
//????*50		8
		AddPlayerInfo(-1,"item",8,50)
//????888?*2		59557
		AddPlayerInfo(-1,"item",59557,2)
		return
	endif
	
	if $itemid == 44847
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 6
			BC("screen","player",-1,"You need at least 6 empty slots in your bag!")
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
//?????*2		59838
		AddPlayerInfo(-1,"item",59838,2)
//?????*2		2221
		AddPlayerInfo(-1,"item",2221,2)
//????*100		8
		AddPlayerInfo(-1,"item",8,100)
//??????*4		9
		AddPlayerInfo(-1,"item",9,4)
//??????*50(60?)		61073
		AddPlayerInfo(-1,"item",61073,50)
//????888?*4		59557
		AddPlayerInfo(-1,"item",59557,4)
		return
	endif
	
	if $itemid == 44848
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 6
			BC("screen","player",-1,"You need at least 6 empty slots in your bag!")
			return
		endif
		$levelp = 70
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
//?????*1		59839
		AddPlayerInfo(-1,"item",59839,3)
//?????*2		2221
		AddPlayerInfo(-1,"item",2221,2)
//????*100		8
		AddPlayerInfo(-1,"item",8,100)
//??????*4		9
		AddPlayerInfo(-1,"item",9,4)
//????*90		50036
		AddPlayerInfo(-1,"item",50036,90)
//????888?*6		59557
		AddPlayerInfo(-1,"item",59557,6)
		return
	endif

} 

//		
//		
//		
//		
//		
//		
