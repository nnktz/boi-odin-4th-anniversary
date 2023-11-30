 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.5.8 
 //  Author:???  
 //  TaskName: ???? 
 //****************************  
 //????	1197			
//0-???????	
//1-?????????+10??
//2-???????????x50??x20
//3-?????????????	
//4-???????????x20		

//???????	44871
//???????	44872
	
function OnRequest(){ 
	//??????
	$Now_Minute =  GetSystemTime( "minute")
	//??
	$Now_Hour =  GetSystemTime( "hour" )
	//??
	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	
	$time = $Now_Hour * 100
	$time = $time + $Now_Minute

		
	if $Now_Year != 2013
		DisableNpcOption(0)
	endif
	if $Now_Yday < 141
		DisableNpcOption(0)
		
	endif
	if $Now_Yday > 168
		DisableNpcOption(0)
	endif

	//$playervarid = 349
	//$playervar = GetPlayerVar(-1,$playervarid)
	//if $playervar > 0
	//	DisableNpcOption(2)
	//endif
	$result = IsTaskAccept( -1, 1934 )
	if $result == 0
	  DisableNpcOption(0)     
	endif 
	$result = GetPlayerVar(-1,4208)
	if $result == $Now_Yday
	  DisableNpcOption(0)     
	endif
	//$result = GetPlayerVar(-1,3581)
	//if $result != 0
	//  DisableNpcOption(0)     
	//endif
} 
function OnOption0(){ 
	//??????
	$Now_Minute =  GetSystemTime( "minute")
	//??
	$Now_Hour =  GetSystemTime( "hour" )
	//??
	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
		//?????????,???????65535?$playvar 4208
		$playervarid = 4208
		$playervar = GetPlayerVar(-1,$playervarid)
		#nameitem = "Hermes' Blessing"
		if $playervar == $Now_Yday
			BC("screen","player",-1,"You have already finished ",#nameitem,"this quest, please come back tomorrow!")
			return
		endif       
		$lv = GetPlayerInfo( -1, "level")
		if $lv < 20
			BC( "dialogbox", "player", -1, "You haven't reached LV20, keep up!")
			return
		endif
		$nullitem = GetPlayerInfo(-1,"nullitem",3)
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You bag is full. Please clear your bag before you acquire the quest!")
			return
		endif
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "You have too many quests, either complete or abandon the ones you currently have in order to get new ones." )
			return
		endif
		
//---------------------------------------------
		AcceptTask( -1 , 1934 )
		SetPlayerVar(-1,$playervarid,$Now_Yday)
		SetPlayerVar(-1,400,0)   
		SetPlayerVar(-1,401,0)
		SetPlayerVar(-1,402,0)
		BC( "screen", "player", -1, "Receive Quest: Hermes' Blessing" )
} 
function OnOption1(){ 
	$itemid = 44871
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Hermes' Blessing in your bag!" )
		return
	endif
	  
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You don't have enough space in your materials bag!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif

  //???????
  
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 2360, 1 ) 
   #name = GetPlayerInfo( -1, "name" )
	BC( "screen", "servergroup", -1, "Player",#name,"Has used the Hermes' Blessing to exchange for Hephaestus' Hammer +10 from Hermes!")
	BC( "chat", "servergroup", -1, "Player",#name,"Has used the Hermes' Blessing to exchange for Hephaestus' Hammer +10 from Hermes!")
}
function OnOption2(){ 
	$itemid = 44871
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Hermes' Blessing in your bag!" )
		return
	endif
	  
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You don't have enough space in your materials bag!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif
  $bag_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You don't have enough space in your materials bag!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif

  //???????
  
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 2, 50 ) 
  AddPlayerInfo(-1, "item", 2223, 20 ) 
   #name = GetPlayerInfo( -1, "name" )
	BC( "screen", "servergroup", -1, "Player",#name,"Has used the Hermes' Blessing to exchange for Major Fortify Crystal x50 and Fortify Charm x20 from Hermes!")
	BC( "chat", "servergroup", -1, "Player",#name,"Has used the Hermes' Blessing to exchange for Major Fortify Crystal x50 and Fortify Charm x20 from Hermes!")
}
function OnOption3(){ 
	$itemid = 44872
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Hermes' Seal in your bag!" )
		return
	endif
	  
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You don't have enough space in your materials bag!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif

  //???????
  
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 2401, 1 ) 
   #name = GetPlayerInfo( -1, "name" )
	BC( "screen", "servergroup", -1, "Player",#name,"Has used the Hermes' Seal to exchange for a F-Protect from Hermes.")
	BC( "chat", "servergroup", -1, "Player",#name,"Has used the Hermes' Seal to exchange for a F-Protect from Hermes.")
}
function OnOption4(){ 
	$itemid = 44872
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Hermes' Seal in your bag!" )
		return
	endif
	  
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You don't have enough space in your materials bag!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif

  //???????
  
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 9, 20 ) 
   #name = GetPlayerInfo( -1, "name" )
	BC( "screen", "servergroup", -1, "Player",#name,"Has used the Hermes' Seal to exchange for Major Fortify Crystal x20 from Hermes.")
	BC( "chat", "servergroup", -1, "Player",#name,"Has used the Hermes' Seal to exchange for Major Fortify Crystal x20 from Hermes.")
}
