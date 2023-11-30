
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/19
	//		Author:???
	//		TaskName:Npc-572.s
	//		TaskID:  
	//****************************************
	
	function OnRequest(){
		//??????
		$itemid = 44710
	  $item = GetPlayerInfo(-1,"item",$itemid)  
		if $item < 1
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif
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
		if $Now_Month != 4
			DisableNpcOption(4)
		endif
		if $Now_Mday < 23
			DisableNpcOption(4)
		endif 
		if $Now_Mday > 29
			DisableNpcOption(4)
		endif  
		$itemid = 21208
	  $item = GetPlayerInfo(-1,"item",$itemid)  
		if $item < 1
			DisableNpcOption(4)
		endif
		
	}


//	?10???????????????	
	function OnOption0(){
//44604	????????
//44605	????????
//44407	???
		$playerid = GetPlayerID()
		
		$isget = GetPlayerVar(-1,297)
		if $isget == 1
			BC("dialogbox","player",-1,"You've already traded a Platinum Noble Coupon! You can only trade one.")
			return
		endif
		//??
		$itemcard_id = 44604
		$itembox_id = 44605
		$itemsubmax = 10
		$itemsubid_A = 44407
		#itemcardname = "Platinum Noble Coupon"
		#itemboxname = "Platinum Noble Gift Box"
		#itemsubname = "Gold Key"
		//??
		$itemcard = GetPlayerInfo(-1,"item",$itemcard_id)
		if $itemcard < 1
			BC("dialogbox","player",-1,"You don't have a ",#itemcardname,"!")
			return
		endif
		$itemsub_A = GetPlayerInfo(-1,"item",$itemsubid_A)
		$itemtotal += $itemsub_A
		if $itemtotal < $itemsubmax
			BC("dialogbox","player",-1,"You need ",$itemsubmax,"x ",#itemsubname," to trade for this. You already have a ",#itemboxname,".")
			return
		endif
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Not enough space in your bag!")
			return
		endif
		//??
		$resultcard = SubPlayerInfo(-1,"item",$itemcard_id,1)
		//-------------------------------
		$totalsub = $itemsubmax
		if $itemsub_A >= $totalsub
			$subitem = $totalsub
		else
			$subitem = $itemsub_A
		endif
		$result = SubPlayerInfo(-1,"item",$itemsubid_A,$subitem)
		if $result == 0
			$totalsub = $totalsub - $subitem
		endif
		//--------------------------------
		if $resultcard == 0
			if $totalsub == 0
				AddPlayerInfo(-1,"item",$itembox_id,1)
				SetPlayerVar(-1,297,1)
			endif
		endif
		
		
	}
	
//	????????????????x1
	function OnOption1(){
//44604	????????
//44605	????????
//59838	?????
		$playerid = GetPlayerID()
		
		$isget = GetPlayerVar(-1,297)
		if $isget == 1
			BC("dialogbox","player",-1,"You've already traded a Platinum Noble Coupon! You can only trade one.")
			return
		endif
		//??
		$itemcard_id = 44604
		$itembox_id = 59838
		$itemsubmax = 0
		$itemsubid_A = 44407
		#itemcardname = "Platinum Noble Coupon"
		#itemboxname = "LV2 Gem Coin"
		#itemsubname = "Gold Key"
		//??
		$itemcard = GetPlayerInfo(-1,"item",$itemcard_id)
		if $itemcard < 1
			BC("dialogbox","player",-1,"You don't have a ",#itemcardname,"!")
			return
		endif
		$itemsub_A = GetPlayerInfo(-1,"item",$itemsubid_A)
		$itemtotal += $itemsub_A
		if $itemtotal < $itemsubmax
			BC("chat","player",-1,"itemtotal=",$itemtotal,"  itemsubmax=",$itemsubmax)
			BC("dialogbox","player",-1,"You need ",$max,"x ",#itemsubname," to trade for this. You already have a ",#itemboxname,".")
			return
		endif
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Not enough space in your bag!")
			return
		endif
		//??
		$resultcard = SubPlayerInfo(-1,"item",$itemcard_id,1)
		//-------------------------------
		$totalsub = $itemsubmax
		if $itemsub_A >= $totalsub
			$subitem = $totalsub
		else
			$subitem = $itemsub_A
		endif
		$result = SubPlayerInfo(-1,"item",$itemsubid_A,$subitem)
		if $result == 0
			$totalsub = $totalsub - $subitem
		endif
		//--------------------------------
		if $resultcard == 0
			if $totalsub == 0
				AddPlayerInfo(-1,"item",$itembox_id,1)
				SetPlayerVar(-1,297,1)
			endif
		endif
		
	}
//????????-4???
	function OnOption2(){ 
//21208	??-????
//21209	??-??????
//44710	????

	$itemid = 44710
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Star of Celebration in your bag!" )
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
  AddPlayerInfo(-1, "item", 21208, 1 ) 
 
} 
//????????-4???
	function OnOption3(){ 
//21208	??-????
//21209	??-??????
//44710	????

	$itemid = 44710
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Star of Celebration in your bag!" )
		return
	endif
	$itemid1 = 44714
		$item1 = GetPlayerInfo(-1,"item",$itemid1)  
	if $item1 < 1
		BC( "screen", "player", -1, "There is no Medal Upgrade Charm in your bag!" )
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
  $del_count1 = SubPlayerInfo( -1, "item", $itemid1, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif
   if $del_count1 != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 21209, 1 ) 
 
} 
//????????-4???
function OnOption4(){ 
//21208	??-????
//21209	??-??????
//44710	????

	$itemid = 21208
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Badge: Star of Celebration in your bag!" )
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
  AddPlayerInfo(-1, "item", 44710, 1 ) 
 
} 