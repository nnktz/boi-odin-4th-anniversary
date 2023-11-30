 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: ???1162
// //****************************  
// ????			0		????	3455
// ????2    1
//????			2		0/1??	349
//????			3		44680	????	
//????			4		44681	????	
//????			5		44682	????	
//????*1	????*1	10	6		60987	
//??????????*1	12	7		62560	
//????*1	????*1	20	8		60936	
//
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
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif
	if $Now_Yday < 64
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif
	if $Now_Yday < 71
		DisableNpcOption(2)
	endif
	if $Now_Yday > 97
		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif
	if $time < 2000
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif
	if $time > 2200
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif
	//$playervarid = 349
	//$playervar = GetPlayerVar(-1,$playervarid)
	//if $playervar > 0
	//	DisableNpcOption(2)
	//endif
	$result = IsTaskAccept( -1, 1888 )
	if $result == 0
	  DisableNpcOption(2)     
	endif 
	$result = IsTaskDone( -1, 1888 )
	if $result == 0
	  DisableNpcOption(2)     
	endif
} 
function OnOption0(){ 
	//?????????,???????0~1?$playvar
		$Line = GetServerLineID()
		if $Line != 4
			if $Line != 6
			BC("screen","player",-1,"The event is open in Realm 4 and Realm 6!")
			return
			endif
		endif
	  $sysyday = GetSystemTime("yday")
		$playervarid = 3455
		$playervar = GetPlayerVar(-1,$playervarid)
		#nameitem = "Ares' Blessing"
		if $playervar == $sysyday
			BC("screen","player",-1,"You've already received one",#nameitem,"quest, please come tomorrow!")
			return
		endif
		$lv = GetPlayerInfo( -1, "level")
		if $lv < 20
			BC( "dialogbox", "player", -1, "You haven't reached LV20, keep up!")
			return
		endif
		$playerid = GetPlayerID()
		$teamD_count = 0
	  $Cid = 0
	  while $Cid < 6
	    $teamplayer_id = GetTeamMemberID($playerID,$Cid)
	    if $teamplayer_id > 0
				$teamD_count = $teamD_count + 1
	    endif
	    $Cid = $Cid + 1
	  endwhile
    if $teamD_count > 1
    	BC("screen","player",-1,"This quest need be finished alone, please leave your party and re-accept it!")	
    	return
    endif
 ///--------------------------------------------------
		$var = 3456
		//44680	????
		//44681	????
		//44682	????

		$item = GetPlayerInfo( -1 , "item" , 44680  )
		if $item > 0
			$del_count = SubPlayerInfo( -1, "item", 44680, 1 )
			$ran = RandomNumber(1,3)
			SetPlayerVar(-1,$var,$ran)
			SetPlayerVar(-1,350,1)
			if $ran == 1
			BC("screen","player",-1,"You are not friendly enough today. Small animals run away from you!")		
			endif
			if $ran == 2
			BC("screen","player",-1,"You are somewhat friendly today. Small animals might follow you around.")		
			endif
			if $ran == 3
			PlayEffect(-1,"common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini")
			BC("screen","player",-1,"You are quite friendly today. Small animals flock to your side! Go show them around!")		
			endif
			return
		endif
		$item = GetPlayerInfo( -1 , "item" , 44681  )
		if $item > 0
			$del_count = SubPlayerInfo( -1, "item", 44681, 1 )
			$ran = RandomNumber(1,3)
			SetPlayerVar(-1,$var,$ran)
			SetPlayerVar(-1,350,1)
			if $ran == 1
			BC("screen","player",-1,"You are not friendly enough today. Small animals run away from you!")		
			endif
			if $ran == 2
			BC("screen","player",-1,"You are somewhat friendly today. Small animals might follow you around.")		
			endif
			if $ran == 3
			PlayEffect(-1,"common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini")
			BC("screen","player",-1,"You are quite friendly today. Small animals flock to your side! Go show them around!")		
			endif
			return
		endif
		$item = GetPlayerInfo( -1 , "item" , 44682  )
		if $item > 0
			$del_count = SubPlayerInfo( -1, "item", 44682, 1 )
			$ran = RandomNumber(1,3)
			SetPlayerVar(-1,$var,$ran)
			SetPlayerVar(-1,350,1)
			if $ran == 1
			BC("screen","player",-1,"You are not friendly enough today. Small animals run away from you!")		
			endif
			if $ran == 2
			BC("screen","player",-1,"You are somewhat friendly today. Small animals might follow you around.")		
			endif
			if $ran == 3
			PlayEffect(-1,"common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini")
			BC("screen","player",-1,"You are quite friendly today. Small animals flock to your side! Go show them around!")		
			endif
			return
		endif
		$item = GetPlayerInfo( -1 , "money" )
		if $item > 50000
			$del_count = SubPlayerInfo( -1, "money", 50000 )
			$ran = RandomNumber(1,3)
			SetPlayerVar(-1,$var,$ran)
			SetPlayerVar(-1,350,1)
			if $ran == 1
			BC("screen","player",-1,"You are not friendly enough today. Small animals run away from you!")		
			endif
			if $ran == 2
			BC("screen","player",-1,"You are somewhat friendly today. Small animals might follow you around.")		
			endif
			if $ran == 3
			PlayEffect(-1,"common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini")
			BC("screen","player",-1,"You are quite friendly today. Small animals flock to your side! Go show them around!")		
			endif
		else
		BC("screen","player",-1,"Insufficient coins in your bag!")		
		endif
		
		
} 
function OnOption1(){ 
		$Line = GetServerLineID()
		if $Line != 4
			if $Line != 6
			BC("screen","player",-1,"The event is open in Realm 4 and Realm 6!")
			return
			endif
		endif
	//?????????,???????0~1?$playvar
	  $sysyday = GetSystemTime("yday")
		$playervarid = 3455
		$playervar = GetPlayerVar(-1,$playervarid)
		#nameitem = "Ares' Blessing"
		if $playervar == $sysyday
			BC("screen","player",-1,"You've already received one",#nameitem,"You can't receive quests any more!")
			return
		endif
		$lv = GetPlayerInfo( -1, "level")
		if $lv < 20
			BC( "dialogbox", "player", -1, "You haven't reached LV20, keep up!")
			return
		endif
		$playerid = GetPlayerID()
		$teamD_count = 0
	  $Cid = 0
	  while $Cid < 6
	    $teamplayer_id = GetTeamMemberID($playerID,$Cid)
	    if $teamplayer_id > 0
				$teamD_count = $teamD_count + 1
	    endif
	    $Cid = $Cid + 1
	  endwhile
    if $teamD_count > 1
    	BC("screen","player",-1,"This quest need be finished alone, please leave your party and re-accept it!")	
    	return
    endif
  ///--------------------------------------------------
		$if = GetPlayerVar(-1,350)
		if $if == 0
			$ran = RandomNumber(1,3)
			if $ran == 1
			$revaluet = AddDart( -1 , 32420 , 1 , 1 )

			BC("screen","player",-1,"You are not friendly enough today. Small animals run away from you!")		
			$result = AcceptTask( -1 , 1887 )
		//	BC("screen","player",-1,"",$result)	
			SetPlayerVar(-1,$playervarid,$sysyday)
			BC( "screen", "player", -1, "Quest Receiving: Ares' Blessing[Primary]" )
			endif
			if $ran == 2	
			$revaluet = AddDart( -1 , 32430 , 1 , 1 )

			BC("screen","player",-1,"You are somewhat friendly today. Small animals might follow you around.")	
			$result = AcceptTask( -1 , 1893 )
			//BC("screen","player",-1,"",$result)	
			//E:\????3.70\Data\Effect\common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini
			SetPlayerVar(-1,$playervarid,$sysyday)
			BC( "screen", "player", -1, "Quest Receiving: Ares' Blessing[Intermediate]" )
			endif
			if $ran == 3	
			$revaluet = AddDart( -1 , 32431 , 1 , 1 )
			PlayEffect(-1,"common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini")
			BC("screen","player",-1,"You are quite friendly today. Small animals flock to your side! Go show them around!")
			$result = AcceptTask( -1 , 1894 )
			//BC("screen","player",-1,"",$result)	
			SetPlayerVar(-1,$playervarid,$sysyday)
			BC( "screen", "player", -1, "Quest Receiving: Ares' Blessing[Advanced]" )
			#name = GetPlayerInfo( -1, "name" )
		  BC( "screen", "server", -1, "Player",#name,"In Ares' Blessing, you were quite friendly and earned the trust of a sheep. Hooray!")
			
			endif
		endif
		if $if == 1
			$ran = GetPlayerVar(-1,3456)
			if $ran == 1
			$revaluet = AddDart( -1 , 32420 , 1 , 1 )

			BC("screen","player",-1,"You are not friendly enough today. Small animals run away from you!")		
			AcceptTask( -1 , 1887 )
			SetPlayerVar(-1,$playervarid,$sysyday)
			BC( "screen", "player", -1, "Quest Receiving: Ares' Blessing[Primary]" )
			endif
			if $ran == 2	
			$revaluet = AddDart( -1 , 32430 , 1 , 1 )

			BC("screen","player",-1,"You are somewhat friendly today. Small animals might follow you around.")	
			AcceptTask( -1 , 1893 )
			SetPlayerVar(-1,$playervarid,$sysyday)
			BC( "screen", "player", -1, "Quest Receiving: Ares' Blessing[Intermediate]" )
			endif
			if $ran == 3	
			$revaluet = AddDart( -1 , 32431 , 1 , 1 )
			PlayEffect(-1,"common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini")
			BC("screen","player",-1,"You are quite friendly today. Small animals flock to your side! Go show them around!")
			AcceptTask( -1 , 1894 )
			SetPlayerVar(-1,$playervarid,$sysyday)
			BC( "screen", "player", -1, "Quest Receiving: Ares' Blessing[Advanced]" )
			#name = GetPlayerInfo( -1, "name" )
		  BC( "screen", "server", -1, "Player",#name,"In Ares' Blessing, you were quite friendly and earned the trust of a sheep. Hooray!")
			
			endif
			SetPlayerVar(-1,350,0)
			SetPlayerVar(-1,3456,0)
		endif	
} 
function OnOption2(){ 
	//?????????,???????0~1?$playvar
	//	$playervarid = 349
	//	$playervar = GetPlayerVar(-1,$playervarid)
	//	#nameitem = "GUID:05018000041"
	//	if $playervar > 0
	//		BC("screen","player",-1,"You have already finished this quest.",#nameitem,"You can't receive quests any more!")
	//		return
	//	endif       
	$result = IsTaskDone( -1, 1888 )
	if $result == 0
	   BC("screen","player",-1,"You have already finished this quest.",#nameitem,"You can't receive quests any more!")     
	 		return
	endif 
		$lv = GetPlayerInfo( -1, "level")
		if $lv < 90
			BC( "dialogbox", "player", -1, "You haven't reached LV90, keep up!")
			return
		endif
		$nullitem = GetPlayerInfo(-1,"nullitem",3)
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You bag is full. Please clear space in your bag before you acquire the quest!")
			return
		endif
//---------------------------------------------
		AcceptTask( -1 , 1888 )
//		SetPlayerVar(-1,$playervarid,1)
		BC( "screen", "player", -1, "Quest Receiving: Ares' Warsoul" )
} 
function OnOption3(){ 
	$itemid = 44680
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Purple Light's Scroll in your bag!" )
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
  AddPlayerInfo(-1, "item", 8, 5 ) 
} 
function OnOption4(){ 
		$itemid = 44681
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Yellow Light's Scroll in your bag!" )
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
  AddPlayerInfo(-1, "item", 8, 5 ) 
} 
function OnOption5(){ 
	  
  $itemid = 44682
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Green Light's Scroll in your bag!" )
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
  AddPlayerInfo(-1, "item", 8, 5 ) 
} 
function OnOption6(){ 
	$itemid = 44686
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 10
		BC( "screen", "player", -1, "There are not enough Aries Fragments in your bag!" )
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
  
  $del_count = SubPlayerInfo( -1, "item", $itemid, 10 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 60987, 1 ) 
  #name = GetPlayerInfo( -1, "name" )
	BC( "screen", "servergroup", -1, "Player",#name,"Has used 10 Aries Fragments to exchange for the Aries' Might from Ares!")
} 
function OnOption7(){ 
	$itemid = 44686
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 12
		BC( "screen", "player", -1, "There are not enough Aries Fragments in your bag!" )
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
  
  $del_count = SubPlayerInfo( -1, "item", $itemid, 12 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 62560, 1 ) 
  #name = GetPlayerInfo( -1, "name" )
	BC( "screen", "servergroup", -1, "Player",#name,"Has used 12 Aries Fragments to exchange for the Aries Egg from Ares!")
} 
function OnOption8(){ 
	$itemid = 44686
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 20
		BC( "screen", "player", -1, "There are not enough Aries Fragments in your bag!" )
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
  
  $del_count = SubPlayerInfo( -1, "item", $itemid, 20 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 60936, 1 ) 
   #name = GetPlayerInfo( -1, "name" )
	BC( "screen", "servergroup", -1, "Player",#name,"Has used 12 Aries Fragments to exchange for the Aries Nebula from Ares!")
} 
function OnOption9(){ 
	$itemid = 44686
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There are not enough Aries Fragments in your bag!" )
		return
	endif
	  
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif
	//??
  ReqAward(-1 ,39 ,1 )
} 



