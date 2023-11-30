

        //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:???
	//		TaskName:90-MainLine-NPC-221.s
	//		TaskID: 
	//
	//****************************************

	function OnRequest(){
	
	 //??175???????
		$Done = IsTaskDone( -1 , 175 )
		if $Done != 0
			DisableNpcOption(0)
		endif
	 //??12724?????????
		$info = GetPlayerInfo( -1, "item", 12724 )
		if $info > 0
			DisableNpcOption(0)
		endif
   //??????????
		$result = HaveTitle( -1, 69 )
		if $result == 0
			DisableNpcOption(0)
		endif
		$num = GetPlayerInfo( -1, "item", 62610 )
		if $num < 1
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif 
		$num = GetPlayerInfo( -1, "item", 62620 )
		if $num < 1
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif
		$num = GetPlayerInfo( -1, "item", 44614 )
		if $num < 1
			DisableNpcOption(11)
		endif
		$num = GetPlayerInfo( -1, "item", 44619 )
		if $num < 1
			DisableNpcOption(12)
		endif
		$num = GetPlayerInfo( -1, "item", 44620 )
		if $num < 1
			DisableNpcOption(14)
		endif
		$item1 = GetPlayerInfo(-1,"item",59979)
		$item2 = GetPlayerInfo(-1,"item",59976)
		$item3 = GetPlayerInfo(-1,"item",44407)
		$num = $item1 + $item2
		$num = $num + $item3
		if $num < 1
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
		endif
		$quan1 = GetPlayerInfo(-1,"item",44595)
		$quan2 = GetPlayerInfo(-1,"item",44596)
		$quan3 = GetPlayerInfo(-1,"item",44597)
		$quan = $quan1 + $quan2
		$quan = $quan + $quan3
		if $quan < 1
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
		endif
		$m = 0
		$n = GetPlayerInfo(-1,"item",62135)
		$m = $m + $n
		$n = GetPlayerInfo(-1,"item",62136)
		$m = $m + $n
		$n = GetPlayerInfo(-1,"item",62137)
		$m = $m + $n
		$n = GetPlayerInfo(-1,"item",62138) 
		$m = $m + $n	
		$n = GetPlayerInfo(-1,"item",62139)
		$m = $m + $n
		$n = GetPlayerInfo(-1,"item",62140)
		$m = $m + $n
		if $m < 1
			DisableNpcOption(15)
		endif 
	//-------------------------------????-----------------option8,9,10,11,12
	//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	  DisableNpcOption(8)
	  DisableNpcOption(9)
	  DisableNpcOption(10)
	  DisableNpcOption(11)
	  DisableNpcOption(12)
	  DisableNpcOption(13)
	  DisableNpcOption(14)
    
  endif
  	if $Now_Yday < 36 
	   DisableNpcOption(8)
	   DisableNpcOption(9)
	  DisableNpcOption(10)
	  DisableNpcOption(11)
	  DisableNpcOption(12)
    DisableNpcOption(14)
  endif
   if $Now_Yday < 46
     DisableNpcOption(13)
   endif  
  if $Now_Yday > 120 
    DisableNpcOption(8)
	   DisableNpcOption(9)
	  DisableNpcOption(10)
	  DisableNpcOption(11)
	  DisableNpcOption(12)
    DisableNpcOption(14)
  endif
  	//????
    $playervar = GetPlayerVar(-1,3449)  
  if $playervar == $Now_Yday
	   DisableNpcOption(8)
  endif 
   $playervar1 = GetPlayerVar(-1,413)  
  if $playervar1 != 0
	   DisableNpcOption(13)
  endif 
  $idp = GetPlayerID()
  $value1 = GetGlobalVar(171 )
  $value2 = GetGlobalVar(172 )
  $value3 = GetGlobalVar(173 )
  if $idp != $value1
   if $idp != $value2
     if $idp != $value3
      DisableNpcOption(13)
     endif
   endif
  endif   
	}
	
	function OnOption0(){
	
		$Accept = IsTaskDone( -1 , 163 )
		if $Done != 0
			return
		endif
		
		$info2 = GetPlayerInfo( -1, "item", 12724 )
		if $info2 > 0
			return		
		endif
		
		$godlevel = GetGodLevel( -1 )
		if $godlevel >= 1
			return
		endif
		
		$bag = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag < 1
			BC( "screen", "player", -1, "Your bag is full, you can not receive Blood of Nemo." )   
			return
		endif
		
		AddPlayerInfo( -1, "item", 12724, 1 )
	
	}
	
	function OnOption1(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 62610, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62608, 1 )			
	}
	function OnOption2(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 62610, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62609, 1 )	
	}			
	function OnOption3(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 62620, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62567, 1 )			
	}
	function OnOption4(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 62620, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62594, 1 )	
	}			
	
	function OnOption5(){
//44595	??????????
//44596	??????????
//44597	??????????
//44598	?????????
//44599	?????????
//44600	?????????
//59979	????	
//59976	????	????
		
		$isget = GetPlayerVar(-1,295)
		if $isget == 1
			BC("dialogbox","player",-1,"You've exchanged the gift pack already!")
			return
		endif
		
		$max = 10
		$itemcard = 44595
		$itembox = 44598
		#nameitem = "Returning Veteran Silver Letter"
		#nameitem2 = "Returning Veteran Silver Gift Box"
		$playerid = GetPlayerID()
		$item1 = GetPlayerInfo(-1,"item",$itemcard)
		if $item1 < 1
			BC("dialogbox","player",-1,"You don't have",#nameitem,"!")
			return
		endif
		$item2 = GetPlayerInfo(-1,"item",59979)
		$item3 = GetPlayerInfo(-1,"item",59976)
		$item4 = GetPlayerInfo(-1,"item",44407)
		$item23 = $item2 + $item3
		$item23 = $item23 + $item4
		if $item23 < $max
			BC("dialogbox","player",-1,"It requires",$max,"Need a Welcoming Key or a Gold Key to exchange.",#nameitem2,"Got it.")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$res1 = SubPlayerInfo(-1,"item",$itemcard,1)
		
		if $res1 != 0
			BC("screen","player",-1,"Error occurred when using item. Please contact Customer Service!")
			return
		endif
		
		if $item23 >= $max
		//?????????
			if $item2 > 0
				if $item2 >= 10
				//???????????????,??????????
					$kou = SubPlayerInfo(-1,"item",59979,10)
					AddPlayerInfo(-1,"item",$itembox,1)
					SetPlayerVar(-1,295,1)
					return
				else
					$kou = SubPlayerInfo(-1,"item",59979,$item2)
					if $item3 > 0
						$zong = $max - $item2
						if $item3 >= $zong
							$kou = SubPlayerInfo(-1,"item",59976,$zong)
							AddPlayerInfo(-1,"item",$itembox,1)
							SetPlayerVar(-1,295,1)
							return
						else
							$kou = SubPlayerInfo(-1,"item",59976,$item3)
							if $item4 > 0
								$zong = $max - $item2
								$zong = $zong - $item3
								SubPlayerInfo(-1,"item",44407,$zong)
								AddPlayerInfo(-1,"item",$itembox,1)
								SetPlayerVar(-1,295,1)
								return
							endif
						endif
					else
						$zong = $max - $item2
						if $item4 > 0
							SubPlayerInfo(-1,"item",44407,$zong)
							AddPlayerInfo(-1,"item",$itembox,1)
							SetPlayerVar(-1,295,1)
							return
						endif
					endif
				endif
			else
				if $item3 > 0
					if $item3 >= $max
						SubPlayerInfo(-1,"item",59976,10)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
						return
					else
						SubPlayerInfo(-1,"item",59976,$item3)
						$zong = $max - $item3
						SubPlayerInfo(-1,"item",44407,$zong)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
						return
					endif
				else
					if $item4 > 0
						SubPlayerInfo(-1,"item",44407,$max)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
					endif
				endif
			endif
		endif
						
						
					
				
		
//		if $item2 == 0
//			$res2 = 0
//		else
//			if $item2 > $max
//				$item2 = $max
//			endif
//			$res2 = SubPlayerInfo(-1,"item",59979,$item2)
//		endif
//		$other = $max - $item2
//		if $other == 0
//			$res3 = 0
//		else
//			$res3 = SubPlayerInfo(-1,"item",59976,$other)
//		endif
//		if $res1 == 0
//			if $res2 == 0
//				if $res3 == 0
//					AddPlayerInfo(-1,"item",$itembox,1)
//					SetPlayerVar(-1,295,1)
//				endif
//			endif
//		endif
		
		
	}
	
	function OnOption6(){
//44595	??????????
//44596	??????????
//44597	??????????
//44598	?????????
//44599	?????????
//44600	?????????
//59979	????	
//59976	????	????
		
		$isget = GetPlayerVar(-1,295)
		if $isget == 1
			BC("dialogbox","player",-1,"You've exchanged the gift pack already!")
			return
		endif
		
		$max = 20
		$itemcard = 44596
		$itembox = 44599
		#nameitem = "Returning Veteran Gold Letter"
		#nameitem2 = "Returning Veteran Gold Gift Box"
		$playerid = GetPlayerID()
		$item1 = GetPlayerInfo(-1,"item",$itemcard)
		if $item1 < 1
			BC("dialogbox","player",-1,"You don't have",#nameitem,"!")
			return
		endif
		$item2 = GetPlayerInfo(-1,"item",59979)
		$item3 = GetPlayerInfo(-1,"item",59976)
		$item4 = GetPlayerInfo(-1,"item",44407)
		$item23 = $item2 + $item3
		$item23 = $item23 + $item4
		if $item23 < $max
			BC("dialogbox","player",-1,"It requires",$max,"Need a Welcoming Key or a Gold Key to exchange.",#nameitem2,"Got it.")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$res1 = SubPlayerInfo(-1,"item",$itemcard,1)
		
		if $res1 != 0
			BC("screen","player",-1,"Error occurred when using item. Please contact Customer Service!")
			return
		endif
		
		if $item23 >= $max
		//?????????
			if $item2 > 0
				if $item2 >= 20
				//???????????????,??????????
					$kou = SubPlayerInfo(-1,"item",59979,20)
					AddPlayerInfo(-1,"item",$itembox,1)
					SetPlayerVar(-1,295,1)
					return
				else
					$kou = SubPlayerInfo(-1,"item",59979,$item2)
					if $item3 > 0
						$zong = $max - $item2
						if $item3 >= $zong
							$kou = SubPlayerInfo(-1,"item",59976,$zong)
							AddPlayerInfo(-1,"item",$itembox,1)
							SetPlayerVar(-1,295,1)
							return
						else
							$kou = SubPlayerInfo(-1,"item",59976,$item3)
							if $item4 > 0
								$zong = $max - $item2
								$zong = $zong - $item3
								SubPlayerInfo(-1,"item",44407,$zong)
								AddPlayerInfo(-1,"item",$itembox,1)
								SetPlayerVar(-1,295,1)
								return
							endif
						endif
					else
						$zong = $max - $item2
						if $item4 > 0
							SubPlayerInfo(-1,"item",44407,$zong)
							AddPlayerInfo(-1,"item",$itembox,1)
							SetPlayerVar(-1,295,1)
							return
						endif
					endif
				endif
			else
				if $item3 > 0
					if $item3 >= $max
						SubPlayerInfo(-1,"item",59976,20)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
						return
					else
						SubPlayerInfo(-1,"item",59976,$item3)
						$zong = $max - $item3
						SubPlayerInfo(-1,"item",44407,$zong)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
						return
					endif
				else
					if $item4 > 0
						SubPlayerInfo(-1,"item",44407,$max)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
					endif
				endif
			endif
		endif
		
		
	}
	
	function OnOption7(){
//44595	??????????
//44596	??????????
//44597	??????????
//44598	?????????
//44599	?????????
//44600	?????????
//59979	????	
//59976	????	????
		
		$isget = GetPlayerVar(-1,295)
		if $isget == 1
			BC("dialogbox","player",-1,"You've exchanged the gift pack already!")
			return
		endif
		
		$max = 40
		$itemcard = 44597
		$itembox = 44600
		#nameitem = "Returning Veteran Diamond Letter"
		#nameitem2 = "Returning Veteran Diamond Gift Box"
		$playerid = GetPlayerID()
		$item1 = GetPlayerInfo(-1,"item",$itemcard)
		if $item1 < 1
			BC("dialogbox","player",-1,"You don't have",#nameitem,"!")
			return
		endif
		$item2 = GetPlayerInfo(-1,"item",59979)
		$item3 = GetPlayerInfo(-1,"item",59976)
		$item4 = GetPlayerInfo(-1,"item",44407)
		$item23 = $item2 + $item3
		$item23 = $item23 + $item4
		if $item23 < $max
			BC("dialogbox","player",-1,"It requires",$max,"Need a Welcoming Key or a Gold Key to exchange.",#nameitem2,"Got it.")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$res1 = SubPlayerInfo(-1,"item",$itemcard,1)
		
		if $res1 != 0
			BC("screen","player",-1,"Error occurred when using item. Please contact Customer Service!")
			return
		endif
		
		if $item23 >= $max
		//?????????
			if $item2 > 0
				if $item2 >= 40
				//???????????????,??????????
					$kou = SubPlayerInfo(-1,"item",59979,40)
					AddPlayerInfo(-1,"item",$itembox,1)
					SetPlayerVar(-1,295,1)
					return
				else
					$kou = SubPlayerInfo(-1,"item",59979,$item2)
					if $item3 > 0
						$zong = $max - $item2
						if $item3 >= $zong
							$kou = SubPlayerInfo(-1,"item",59976,$zong)
							AddPlayerInfo(-1,"item",$itembox,1)
							SetPlayerVar(-1,295,1)
							return
						else
							$kou = SubPlayerInfo(-1,"item",59976,$item3)
							if $item4 > 0
								$zong = $max - $item2
								$zong = $zong - $item3
								SubPlayerInfo(-1,"item",44407,$zong)
								AddPlayerInfo(-1,"item",$itembox,1)
								SetPlayerVar(-1,295,1)
								return
							endif
						endif
					else
						$zong = $max - $item2
						if $item4 > 0
							SubPlayerInfo(-1,"item",44407,$zong)
							AddPlayerInfo(-1,"item",$itembox,1)
							SetPlayerVar(-1,295,1)
							return
						endif
					endif
				endif
			else
				if $item3 > 0
					if $item3 >= $max
						SubPlayerInfo(-1,"item",59976,40)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
						return
					else
						SubPlayerInfo(-1,"item",59976,$item3)
						$zong = $max - $item3
						SubPlayerInfo(-1,"item",44407,$zong)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
						return
					endif
				else
					if $item4 > 0
						SubPlayerInfo(-1,"item",44407,$max)
						AddPlayerInfo(-1,"item",$itembox,1)
						SetPlayerVar(-1,295,1)
					endif
				endif
			endif
		endif
		
		
	}
	function OnOption8(){
		//????????
		//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )

	if $Now_Yday > 49 
	   BC( "messagebox", "player", -1, "Good news! You can go to the {hWishing Tree[1129]h} to take your gifts now!" )
     return
  endif
	//????
    $playervar = GetPlayerVar(-1,3449)  
    if $playervar == $Now_Yday
	   BC( "dialogbox", "player", -1, "You've already received the gifts today.\nIf you want more Mystical Springwater, you can purchase them from the Marketplace." )
     return
  endif 
  //????
    $nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
  	AddPlayerInfo( -1, "item", 44633, 1 )
		SetPlayerVar(-1, 3449, $Now_Yday )
		BC( "dialogbox", "player", -1, "You obtained a Mystical Springwater. Go to the {hWishing Tree[1129]h} to make a wish!" )
		}
	function OnOption9(){
		//??4???????????	
		//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Yday < 36 
	return
	endif

			//??????
		$Info = GetPlayerInfo( -1, "item", 44614)	
		
			if $Info < 1
			BC( "dialogbox", "player", -1, "You don't have a Spring Festival Card in your bag!" )
				return
			endif
				//??????
		$Info = GetPlayerInfo( -1, "item", 44622)	
			if $Info < 4
			BC( "dialogbox", "player", -1, "You don't have 4 Divine Scores in your bag!" )
				return
			endif
			 //???????
     $del_count = SubPlayerInfo( -1, "item", 44614, 1 )
      $del_count1 = SubPlayerInfo( -1, "item", 44622, 4 )
    if $del_count1 != 0
     return
    endif
    if $del_count != 0
     return
    endif
  	AddPlayerInfo( -1, "item", 44619, 1 )
		BC( "dialogbox", "player", -1, "You've Blessed a Spring Festival Card and luckily get an Elegant Spring Festival Card. You can still Bless the Elegant Spring Festival Card, or find Skuld to open it." )
		 PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
		}
	function OnOption10(){
		//	??26?????????????
		//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Yday < 36 
	return
	endif

			//??????
		$Info = GetPlayerInfo( -1, "item", 44619)	
		
			if $Info < 1
			BC( "dialogbox", "player", -1, "You don't have an Elegant Spring Festival Card in your bag!" )
				return
			endif
				//??????
		$Info = GetPlayerInfo( -1, "item", 44622)	
			if $Info < 26
			BC( "dialogbox", "player", -1, "You don't have 26 Divine Scores in your bag!" )
				return
			endif
			 //???????
     $del_count = SubPlayerInfo( -1, "item", 44619, 1 )
      $del_count1 = SubPlayerInfo( -1, "item", 44622, 26 )
     if $del_count != 0
     return
  endif
    if $del_count1 != 0
     return
  endif
  	AddPlayerInfo( -1, "item", 44620, 1 )
		BC( "dialogbox", "player", -1, "You've Blessed an Elegant Spring Festival Card, and get a Luxurious Spring Festival Card. Right-click to get rewards!" )
		 PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )

		}
	function OnOption11(){
		//??????,?????7?		63769	????		21206	????	5	44621

			//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	   BC( "screen", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     BC( "chat", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     return
  endif
  	if $Now_Yday < 49 
	   BC( "screen", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     BC( "chat", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     return
  endif

			//??????
		$Info = GetPlayerInfo( -1, "item", 44614)	
			if $Info < 1
			BC( "dialogbox", "player", -1, "You don't have a Spring Festival Card in your bag!" )
				return
			endif
     //????
    $nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 3
			BC( "dialogbox", "player", -1, "You need at least 3 empty slots in your bag before you can use that!" )
			return
		endif
			 //???????
     $del_count = SubPlayerInfo( -1, "item", 44614, 1 )
     //??????????,????????
  if $del_count != 0
     return
  endif
     
  	AddPlayerInfo( -1, "item", 63769, 1 )
  	AddPlayerInfo( -1, "item", 21206, 1 )
  	AddPlayerInfo( -1, "item", 44621, 5 )
		BC( "screen", "player", -1, "You opened a Spring Festival Card, and received a Platinum Noble Card (7-days), Luck of the Snake Badge, and Flowery Fireworks x5. Happy Spring Festival!" )
		PlayEffect(-1, "common\huodong\xinnianlipao\tx_xinnianlipao1.ini" )

		
		}
	function OnOption12(){
		//	?????????????30?		63771	????		21206	????	15	44621
			//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	   BC( "screen", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     BC( "chat", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     return
  endif
  	if $Now_Yday < 49 
	   BC( "screen", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     BC( "chat", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     return
  endif

			//??????
		$Info = GetPlayerInfo( -1, "item", 44619)	
			if $Info < 1
			BC( "dialogbox", "player", -1, "You don't have an Elegant Spring Festival Card in your bag!" )
				return
			endif
     //????
    $nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 3
			BC( "dialogbox", "player", -1, "You need at least 3 empty slots in your bag before you can use that!" )
			return
		endif
			 //???????
     $del_count = SubPlayerInfo( -1, "item", 44619, 1 )
     //??????????,????????
  if $del_count != 0
     return
  endif
     
  	AddPlayerInfo( -1, "item", 63771, 1 )
  	AddPlayerInfo( -1, "item", 21206, 1 )
  	AddPlayerInfo( -1, "item", 44621, 15 )
		BC( "screen", "player", -1, "You opened an Elegant Spring Festival Card, and received a Platinum Noble Card (30-days), Luck of the Snake Badge, and Flowery Fireworks x15. Happy Spring Festival!" )
		PlayEffect(-1, "common\huodong\xinnianlipao\tx_xinnianlipao1.ini" )

		}
	function OnOption13(){
	//???????????? 
	//??????
//44627	??????
//44628	??????
//44629	??????


	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	  BC( "screen", "player", -1, "Please receive your Valentine's Day Present before August 14th!" )
    return
  endif
   if $Now_Yday < 226
     BC( "screen", "player", -1, "Please receive your Valentine's Day Present before August 14th!" )
    return
   endif  

  //????
    $playervar = GetPlayerVar(-1,413)  
    if $playervar != 0 
	   BC( "screen", "player", -1, "You've already received the gifts for Valentine's Day!" )
	   BC( "chat", "player", -1, "You've already received the gifts for Valentine's Day!" )
     return
    endif 
    //????
    $nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open this!" )
			BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open this!" )
			return
		endif
	$idp = GetPlayerID()
  $value1 = GetGlobalVar(171 )
  $value2 = GetGlobalVar(172 )
  $value3 = GetGlobalVar(173 )
  
  if $idp == $value1
    AddPlayerInfo( -1, "item", 44627, 1 )
    PlayEffect(-1, "common\huodong\xinnianlipao\tx_xinnianlipao2.ini" )
    SetPlayerVar(-1,413,1)
    SetPlayerActLog($idp,57,1)

  endif   
    if $idp == $value2
    AddPlayerInfo( -1, "item", 44628, 1 )
    PlayEffect(-1, "common\huodong\xinnianlipao\tx_xinnianlipao2.ini" )
    SetPlayerVar(-1,413,1)
    SetPlayerActLog($idp,57,2)
  endif  
    if $idp == $value3
    AddPlayerInfo( -1, "item", 44629, 1 )
    PlayEffect(-1, "common\huodong\xinnianlipao\tx_xinnianlipao2.ini" )
    SetPlayerVar(-1,413,1)
    SetPlayerActLog($idp,57,3)
  endif  
}
	function OnOption14(){
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
	if $Now_Year != 2013 
	   BC( "screen", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     BC( "chat", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     return
  endif
  	if $Now_Yday < 49 
	   BC( "screen", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     BC( "chat", "player", -1, "Please open this card after 2.18. There'll be surprises waiting for you!" )
     return
  endif
      
  //??????,
  $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "You must reach LV60 before you can open this card!" )
     BC( "chat", "player", -1, "You must reach LV60 before you can open this card!" )
     return
  endif
  
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 4
     BC( "screen", "player", -1, "Insufficient bag space. After clear some space you can open the Luxurious Spring Festival Card." )
     BC( "chat", "player", -1, "Insufficient bag space. After clear some space you can open the Luxurious Spring Festival Card.")
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44620, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif
//
//  //????????????,???????0~1?3381
// 
//  SetPlayerVar(-1, 3381, 11)
//
  //---------?????????------------
  
  //???? ?????30?		63771	????		21207	????	30	44621	44645	???? 44646	?????


  AddPlayerInfo(-1, "item", 63771, 1 )    
  AddPlayerInfo(-1, "item", 21207, 1 ) 
  AddPlayerInfo(-1, "item", 44621, 30 ) 
  AddPlayerInfo(-1, "item", 44645, 1 ) 
  AddPlayerInfo(-1, "item", 44646, 1 ) 

//  $sex = GetPlayerInfo( -1, "sex" )
//		if $sex == 0
//			AddPlayerInfo( -1, "item", 37033, 1 )
//		endif
//		
//		if $sex == 1
//			AddPlayerInfo( -1, "item", 37034, 1 )
//		endif
//		 //??
//  $lv = GetPlayerInfo( -1, "level")
//   call exp()
//    $pro1 = 125
//		$pro2 = 1
//		$playerID = GetPlayerID()
//		if $playerID < 0
//			return
//		endif
//	  $addexp = $expori / 1000
//	  $addexp = $addexp * $pro1
//	  $addexp *= $pro2
//	  if $addexp > 200000000
//	  	$addexp = 200000000
//	  endif
//	  $addexp = $addexp * 2
//	  AddPlayerInfo(-1,"exp",$addexp)
//	  if $fieldlevel > 0
//	  	$addexp = $fexpori / 1000
//	  	$addexp = $addexp * $pro1
//	  	$addexp *= $pro2
//	    $addexp = $addexp * 2
//	  	AddFieldExp(-1,$addexp)
//	  endif
  
//  //????,??????Buff
  PlayEffect(-1, "common\huodong\xinnianlipao\tx_xinnianlipao1.ini" )
//  AddStatus(-1, 7583, 1 )
  
}
	
	
//	
//	function OnOption3(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
//			return
//		endif
//		$level = GetPlayerInfo(-1,"level")
//		if $level < 60
//			BC("dialogbox","player",-1,"GUID:04723000071")
//			return
//		endif
//		$jinyaoshi = GetPlayerVar(-1 , 245)
//		if $jinyaoshi == 0
//			AddPlayerInfo( -1, "item", 44408, 1 )
//			SetPlayerVar( -1 , 245 , 1)
//			BC( "dialogbox", "player", -1, "GUID:04723000072" )
//		else
//			BC( "dialogbox", "player", -1, "GUID:04723000073" )
//		endif
//	}		
//	function OnOption4(){
//		//????
//		$duihuan = GetPlayerVar( -1 , 3554)
//		//????
//		$wanjia = GetPlayerVar( -1 , 4030)
//
//		if $duihuan > 0
//			BC( "dialogbox", "player", -1, "GUID:04723000074" )
//			return
//		endif
//		
//		if $wanjia >= 1000
//			AddPlayerInfo( -1, "item", 21194, 1 )
//			$wanjia = $wanjia - 1000
//			SetPlayerVar( -1 , 4030 , $wanjia)
////			BC( "screen", "player", -1, "GUID:04723000075"$wanjia)
//			$duihuan = $duihuan + 1
//			SetPlayerVar( -1 , 3554 , $duihuan)			
////			BC( "screen", "player", -1, "GUID:04723000076"$duihuan)	
//			//???????-START
//			$join_number = GetGlobalVar(888)
//			$join_number = $join_number + 1
//			SetGlobalVar(888 , $join_number)
////			BC( "screen", "player", -1, "GUID:04723000077"$join_number)	
//			//???????-END
//		else
//			BC( "screen", "player", -1, "GUID:04723000078" )
//		endif
//
//	}	
//
//	function OnOption5(){
//		//????
//		$duihuan = GetPlayerVar( -1 , 3555)
//		//????
//		$wanjia = GetPlayerVar( -1 , 4030)
//		//????
//		$sex = GetPlayerInfo( -1 , "sex")
//
//		if $duihuan > 0
//			BC( "dialogbox", "player", -1, "GUID:04723000079" )
//			return
//		endif
//		
//		if $wanjia >= 1000
//			if $sex == 0
//				AddPlayerInfo( -1, "item", 36991, 1 )
//			else
//				AddPlayerInfo( -1, "item", 36990, 1 )	
//			endif
//			$wanjia = $wanjia - 1000
//			SetPlayerVar( -1 , 4030 , $wanjia)
////			BC( "screen", "player", -1, "GUID:04723000080"$wanjia)
//			$duihuan = $duihuan + 1
//			SetPlayerVar( -1 , 3555 , $duihuan)			
////			BC( "screen", "player", -1, "GUID:04723000081"$duihuan)	
//			//???????-START
//			$join_number = GetGlobalVar(888)
//			$join_number = $join_number + 1
//			SetGlobalVar(888 , $join_number)
////			BC( "screen", "player", -1, "GUID:04723000082"$join_number)	
//			//???????-END
//		else
//			BC( "screen", "player", -1, "GUID:04723000083" )
//		endif
//
//	}	
//
//	function OnOption6(){
//		//???????
//		$duihuan = GetPlayerVar( -1 , 3556)
//		//???????
//		$diyici = GetPlayerVar( -1 , 209)
//		//????
//		$wanjia = GetPlayerVar( -1 , 4030)
//
//		if $duihuan > 4
//			BC( "dialogbox", "player", -1, "GUID:04723000084" )
//			return
//		endif
//		
//		if $diyici == 0
//			if $wanjia >= 250
//				AddPlayerInfo( -1, "item", 59839, 1 )
//				$wanjia = $wanjia - 250
//				SetPlayerVar( -1 , 4030 , $wanjia)
////				BC( "screen", "player", -1, "GUID:04723000085"$wanjia)
//				$duihuan = $duihuan + 1
//				SetPlayerVar( -1 , 3556 , $duihuan)			
////				BC( "screen", "player", -1, "GUID:04723000086"$duihuan)	
//				$diyici = $diyici + 1
//				SetPlayerVar( -1 , 209 , $diyici)		
////				BC( "screen", "player", -1, "GUID:04723000087"$diyici)	
//				//???????-START
//				$join_number = GetGlobalVar(888)
//				$join_number = $join_number + 1
//				SetGlobalVar(888 , $join_number)
////				BC( "screen", "player", -1, "GUID:04723000088"$join_number)	
//				//???????-END
//				$shengyu = 5 - $duihuan
//				BC( "screen", "player", -1, "GUID:04723000089",$duihuan,"GUID:04723000090",$shengyu,"GUID:04723000091" )
//			else
//				BC( "screen", "player", -1, "GUID:04723000092" )
//			endif
//		else
//			if $wanjia >= 250
//				AddPlayerInfo( -1, "item", 59839, 1 )
//				$wanjia = $wanjia - 250
//				SetPlayerVar( -1 , 4030 , $wanjia)
////				BC( "screen", "player", -1, "GUID:04723000093"$wanjia)
//				$duihuan = $duihuan + 1
//				SetPlayerVar( -1 , 3556 , $duihuan)			
//				$shengyu = 5 - $duihuan
//				BC( "screen", "player", -1, "GUID:04723000094",$duihuan,"GUID:04723000095",$shengyu,"GUID:04723000096" )				
////				BC( "screen", "player", -1, "GUID:04723000097"$duihuan)	
//			else
//				BC( "screen", "player", -1, "GUID:04723000098" )
//			endif
//		endif
//
//	}	
//
//	function OnOption7(){
//		//???????
//		$duihuan = GetPlayerVar( -1 , 3557)
//		//???????
//		$diyici = GetPlayerVar( -1 , 209)
//		//????
//		$wanjia = GetPlayerVar( -1 , 4030)
//
//		if $duihuan > 9
//			BC( "dialogbox", "player", -1, "GUID:04723000099" )
//			return
//		endif
//		
//		if $diyici == 0
//			if $wanjia >= 50
//				AddPlayerInfo( -1, "item", 59838, 1 )
//				$wanjia = $wanjia - 50
//				SetPlayerVar( -1 , 4030 , $wanjia)
////				BC( "screen", "player", -1, "GUID:04723000100"$wanjia)
//				$duihuan = $duihuan + 1
//				SetPlayerVar( -1 , 3557 , $duihuan)			
////				BC( "screen", "player", -1, "GUID:04723000101"$duihuan)	
//				$diyici = $diyici + 1
//				SetPlayerVar( -1 , 209 , $diyici)		
////				BC( "screen", "player", -1, "GUID:04723000102"$diyici)	
//				//???????-START
//				$join_number = GetGlobalVar(888)
//				$join_number = $join_number + 1
//				SetGlobalVar(888 , $join_number)
//				$shengyu = 10 - $duihuan
//				BC( "screen", "player", -1, "GUID:04723000103",$duihuan,"GUID:04723000104",$shengyu,"GUID:04723000105" )					
////				BC( "screen", "player", -1, "GUID:04723000106"$join_number)	
//				//???????-END
//			else
//				BC( "screen", "player", -1, "GUID:04723000107" )
//			endif
//		else
//			if $wanjia >= 50
//				AddPlayerInfo( -1, "item", 59838, 1 )
//				$wanjia = $wanjia - 50
//				SetPlayerVar( -1 , 4030 , $wanjia)
////				BC( "screen", "player", -1, "GUID:04723000108"$wanjia)
//				$duihuan = $duihuan + 1
//				SetPlayerVar( -1 , 3557 , $duihuan)			
////				BC( "screen", "player", -1, "GUID:04723000109"$duihuan)	
//				$shengyu = 10 - $duihuan
//				BC( "screen", "player", -1, "GUID:04723000110",$duihuan,"GUID:04723000111",$shengyu,"GUID:04723000112" )		
//			else
//				BC( "screen", "player", -1, "GUID:04723000113" )
//			endif
//		endif
//
//	}	
//	
//	function OnOption8(){
//		//??????
//		//???????
//		$diyici = GetPlayerVar( -1 , 209)
//		//????
//		$wanjia = GetPlayerVar( -1 , 4030)
//		
//		if $diyici == 0
//			if $wanjia >= 10
//				AddPlayerInfo( -1, "item", 59103, 1 )
//				$wanjia = $wanjia - 10
//				SetPlayerVar( -1 , 4030 , $wanjia)
////				BC( "screen", "player", -1, "GUID:04723000114"$wanjia)
//				$diyici = $diyici + 1
//				SetPlayerVar( -1 , 209 , $diyici)		
////				BC( "screen", "player", -1, "GUID:04723000115"$diyici)	
//				//???????-START
//				$join_number = GetGlobalVar(888)
//				$join_number = $join_number + 1
//				SetGlobalVar(888 , $join_number)
////				BC( "screen", "player", -1, "GUID:04723000116"$join_number)	
//				//???????-END
//			else
//				BC( "screen", "player", -1, "GUID:04723000117" )
//			endif
//		else
//			if $wanjia >= 10
//				AddPlayerInfo( -1, "item", 59103, 1 )
//				$wanjia = $wanjia - 10
//				SetPlayerVar( -1 , 4030 , $wanjia)
////				BC( "screen", "player", -1, "GUID:04723000118"$wanjia)
//			else
//				BC( "screen", "player", -1, "GUID:04723000119" )
//			endif
//		endif
//
//	}	
//
//	function OnOption9(){
//		$wanjia = GetPlayerVar( -1 , 4030)
//		BC("dialogbox","player",-1, "GUID:04723000120" $wanjia "GUID:04723000121")				
//	}

	function OnOption15(){
    //????
    $nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 empty slot in your bag before you can use that!" )
			return
		endif
		$bulaji1 = GetPlayerInfo(-1,"item",62135)
		$bulaji2 = GetPlayerInfo(-1,"item",62136)
		$bulaji = $bulaji1 + $bulaji2
		if $bulaji < 1
			BC( "screen", "player", -1, "You don't have a Bragi's Wheel yet!" )
			return
		endif 
		$heer1 = GetPlayerInfo(-1,"item",62137)
		$heer2 = GetPlayerInfo(-1,"item",62138) 	
		$heer = $heer1 + $heer2
		if $heer < 1
			BC( "screen", "player", -1, "You don't have a Hel's Fury yet!" )
			return
		endif 	
		$fulijia1 = GetPlayerInfo(-1,"item",62139)
		$fulijia2 = GetPlayerInfo(-1,"item",62140) 
		$fulijia = $fulijia1 + $fulijia2
		if $fulijia < 1
			BC( "screen", "player", -1, "You don't have a Frigga's Light yet!" )
			return
		endif
		$resultB1 = SubPlayerInfo(-1,"item",62135,1)
		if $resultB1 != 0
			$resultB2 = SubPlayerInfo(-1,"item",62136,1) 
			$resultB = $resultB1 + $resultB2
			if $resultB == 0
				BC( "screen", "player", -1, "Failed to delete item!" )
				return
			endif
		endif
		$resultH1 = SubPlayerInfo(-1,"item",62137,1)
		if $resultH1 != 0
			$resultH2 = SubPlayerInfo(-1,"item",62138,1) 
			$resultH = $resultH1 + $resultH2
			if $resultH == 0
				BC( "screen", "player", -1, "Failed to delete item!" )
				return
			endif
		endif
		$resultF1 = SubPlayerInfo(-1,"item",62139,1)
		if $resultF1 != 0
			$resultF2 = SubPlayerInfo(-1,"item",62140,1) 
			$resultF = $resultF1 + $resultF2
			if $resultF == 0
				BC( "screen", "player", -1, "Failed to delete item!" )
				return
			endif
		endif
		AddPlayerInfo(-1,"item",62141,1)
		#name = GetPlayerInfo(-1,"name")
		BC( "screen" , "server" , -1 , "Player",#name,"After some effort, you combined Odin's Wings!")
	}
	