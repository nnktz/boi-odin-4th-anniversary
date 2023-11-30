
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-5-31
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		$level = GetPlayerInfo( -1, "level" )
		#name = GetPlayerInfo(-1,"name")
    if $level < 70
         DisableNpcOption(0)
         DisableNpcOption(1)
         DisableNpcOption(2)
         DisableNpcOption(3)
         DisableNpcOption(4)
         DisableNpcOption(5)
         DisableNpcOption(6)
         DisableNpcOption(7)
         DisableNpcOption(8)
         DisableNpcOption(9)
         DisableNpcOption(10)
         DisableNpcOption(11)
    endif
    if $level >= 70
      if $level <= 99
         DisableNpcOption(4)
         DisableNpcOption(5)
         DisableNpcOption(6)
         DisableNpcOption(7)
         DisableNpcOption(8)
         DisableNpcOption(9)
         DisableNpcOption(10)
         DisableNpcOption(11)
      endif 
    endif
    if $level >= 100
      if $level <= 119
         DisableNpcOption(0)
         DisableNpcOption(1)
         DisableNpcOption(2)
         DisableNpcOption(3)
         DisableNpcOption(8)
         DisableNpcOption(9)
         DisableNpcOption(10)
         DisableNpcOption(11)
      endif
    endif
    if $level >= 120
         DisableNpcOption(0)
         DisableNpcOption(1)
         DisableNpcOption(2)
         DisableNpcOption(3)
         DisableNpcOption(4)
         DisableNpcOption(5)
         DisableNpcOption(6)
         DisableNpcOption(7)
    endif
    
	}
	
	//5??????,??1??????
	function OnOption0(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64457 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV1 Bamboo Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 5000
		  BC( "screen", "player", -1, "You do not have 5000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64457, 5 )
		$result1 = SubPlayerInfo(-1, "money", 5000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64458, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption1(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64458 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV2 Bamboo Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 10000
		  BC( "screen", "player", -1, "You do not have 10000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64458, 5 )
		$result1 = SubPlayerInfo(-1, "money", 10000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64459, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption2(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64459 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV3 Bamboo Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 30000
		  BC( "screen", "player", -1, "You do not have 30000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64459, 5 )
		$result1 = SubPlayerInfo(-1, "money", 30000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64460, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption3(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64460 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV4 Bamboo Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 120000
		  BC( "screen", "player", -1, "You do not have 120000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64460, 5 )
		$result1 = SubPlayerInfo(-1, "money", 120000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64461, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
		BC( "screen", "server", -1, "Player ",#name,"Successfully combined LV5 Bamboo Rice Dumpling!" )
	}
	//5??????,??1??????
  function OnOption4(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64462 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV1 Lotus Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 10000
		  BC( "screen", "player", -1, "You do not have 10000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64462, 5 )
		$result1 = SubPlayerInfo(-1, "money", 10000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64463, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption5(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64463 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV2 Lotus Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 20000
		  BC( "screen", "player", -1, "You do not have 20000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64463, 5 )
		$result1 = SubPlayerInfo(-1, "money", 20000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64464, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption6(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64464 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV3 Lotus Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 60000
		  BC( "screen", "player", -1, "You do not have 60000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64464, 5 )
		$result1 = SubPlayerInfo(-1, "money", 60000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64465, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption7(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64465 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV4 Lotus Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 240000
		  BC( "screen", "player", -1, "You do not have 240000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64465, 5 )
		$result1 = SubPlayerInfo(-1, "money", 240000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64466, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
		BC( "screen", "server", -1, "Player ",#name,"Successfully combined LV5 Lotus Rice Dumpling!" )
	}
	//5??????,??1??????
  function OnOption8(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64467 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV1 Pine Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 30000
		  BC( "screen", "player", -1, "You do not have 30000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64467, 5 )
		$result1 = SubPlayerInfo(-1, "money", 30000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64468, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption9(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64468 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV2 Pine Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 60000
		  BC( "screen", "player", -1, "You do not have 60000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64468, 5 )
		$result1 = SubPlayerInfo(-1, "money", 60000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64469, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption10(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64469 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV3 Pine Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 180000
		  BC( "screen", "player", -1, "You do not have 180000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64469, 5 )
		$result1 = SubPlayerInfo(-1, "money", 180000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64470, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5??????,??1??????
  function OnOption11(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 64470 )
		if $count < 5
			BC( "screen", "player", -1, "You have less than 5 LV4 Pine Rice Dumplings!" )
			return
		endif
		//????
		$money = GetPlayerInfo( -1, "money")
		if $money < 720000
		  BC( "screen", "player", -1, "You do not have 720000 coins!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64470, 5 )
		$result1 = SubPlayerInfo(-1, "money", 720000 )
		//??????
		
		if $result != 0
		  if $result1 != 0
			  return
			endif
		endif
		AddPlayerInfo( -1, "item", 64471, 1 )
		BC( "screen", "player", -1, "Exchange completed." )
		BC( "screen", "server", -1, "Player ",#name,"Successfully combined LV5 Pine Rice Dumpling!" )
	}
	
	
	
//	//????44470????*10
//	function OnOption0(){
//		//??????
//	$TaskVar = GetPlayerVar( -1, 3348 )
//	if $TaskVar >= 12
//				BC( "dialogbox", "player", -1, "You've already exchanged 12 times." )
//				return
//			endif
//
//		//????
//	$count = GetPlayerInfo( -1, "item", 44470 )
//		if $count < 1
//			BC( "screen", "player", -1, "You don't have the Egg Yolk Mooncake in your bag!" )
//			return
//		endif	
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
//		//????????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "Insufficient material bag slots!" )
//			return
//		endif
//		
//		
//		$result = SubPlayerInfo( -1, "item", 44470, 1 )
//		
//		//??????
//		
//		if $result != 0
//		  return
//			
//		endif
//		AddPlayerInfo( -1, "item", 8, 10 )
//		$TaskVar = GetPlayerVar( -1, 3348 )
//		$TaskVar = $TaskVar + 1
//		SetPlayerVar( -1, 3348, $TaskVar )
//		$TaskVar = GetPlayerVar( -1, 3348 )
//		$TaskVar = 12 - $TaskVar
//		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards  with common mooncakes ",$TaskVar," times!" )
//	}
//	//????44471????*10
//	function OnOption1(){
//		//??????
//	$TaskVar = GetPlayerVar( -1, 3348 )
//	if $TaskVar >= 12
//				BC( "dialogbox", "player", -1, "You've already exchanged 12 times." )
//				return
//			endif
//
//		//????
//	$count = GetPlayerInfo( -1, "item", 44471)
//		if $count < 1
//			BC( "screen", "player", -1, "You don't have the Lotus Paste Mooncake in your bag!" )
//			return
//		endif	
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
//		//????????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "Insufficient material bag slots!" )
//			return
//		endif
//		
//		
//		$result = SubPlayerInfo( -1, "item", 44471, 1 )
//		//??????
//		
//		if $result != 0
//		  return
//			
//		endif
//		AddPlayerInfo( -1, "item", 8, 10 )
//		$TaskVar = GetPlayerVar( -1, 3348 )
//		$TaskVar = $TaskVar + 1
//		SetPlayerVar( -1, 3348, $TaskVar )
//		$TaskVar = GetPlayerVar( -1, 3348 )
//		$TaskVar = 12 - $TaskVar
//		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards  with common mooncakes ",$TaskVar," times!" )
//	}
//	//????44472????*10
//	function OnOption2(){
//		//??????
//	$TaskVar = GetPlayerVar( -1, 3348 )
//	if $TaskVar >= 12
//				BC( "dialogbox", "player", -1, "You've already exchanged 12 times." )
//				return
//			endif
//
//		//????
//	$count = GetPlayerInfo( -1, "item", 44472 )
//		if $count < 1
//			BC( "screen", "player", -1, "You don't have the Ham Mooncake in your bag!" )
//			return
//		endif	
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
//		//????????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "Insufficient material bag slots!" )
//			return
//		endif
//		
//		
//		$result = SubPlayerInfo( -1, "item", 44472, 1 )
//		
//		//??????
//		
//		if $result != 0
//		  return
//			
//		endif
//		AddPlayerInfo( -1, "item", 8, 10 )
//		$TaskVar = GetPlayerVar( -1, 3348 )
//		$TaskVar = $TaskVar + 1
//		SetPlayerVar( -1, 3348, $TaskVar )
//		$TaskVar = GetPlayerVar( -1, 3348 )
//		$TaskVar = 12 - $TaskVar
//		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards  with common mooncakes ",$TaskVar," times!" )
//	}
//	//????44473????*10
//	function OnOption3(){
//		//??????
//	$TaskVar = GetPlayerVar( -1, 3348 )
//	if $TaskVar >= 12
//				BC( "dialogbox", "player", -1, "You've already exchanged 12 times." )
//				return
//			endif
//
//		//????
//	$count = GetPlayerInfo( -1, "item", 44473 )
//		if $count < 1
//			BC( "screen", "player", -1, "You don't have the Red Bean Mooncake in your bag!" )
//			return
//		endif	
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
//		//????????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "Insufficient material bag slots!" )
//			return
//		endif
//		
//		
//		$result = SubPlayerInfo( -1, "item", 44473, 1 )
//		
//		//??????
//		
//		if $result != 0
//		  return
//			
//		endif
//		AddPlayerInfo( -1, "item", 8, 10 )
//		$TaskVar = GetPlayerVar( -1, 3348 )
//		$TaskVar = $TaskVar + 1
//		SetPlayerVar( -1, 3348, $TaskVar )
//		$TaskVar = GetPlayerVar( -1, 3348 )
//		$TaskVar = 12 - $TaskVar
//		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards  with common mooncakes ",$TaskVar," times!" )
//	}
//	//?????44474,????????*1
//  function OnOption4(){
//		//??????
//	$TaskVar = GetPlayerVar( -1, 3349 )
//	if $TaskVar >= 3
//				BC( "dialogbox", "player", -1, "You've already exchanged 3 times." )
//				return
//			endif
//		//????
//		$count = GetPlayerInfo( -1, "item", 44474 )
//		if $count < 1
//			BC( "screen", "player", -1, "You don't have the Mooncake Box in your bag!" )
//			return
//		endif
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "Insufficient material bag slots!" )
//			return
//		endif
//		
//		$result = SubPlayerInfo( -1, "item", 44474, 1 )
//		
//		//??????
//		
//		if $result != 0
//			  return
//		endif
//		AddPlayerInfo( -1, "item", 9, 1 )
//			$TaskVar = GetPlayerVar( -1, 3349 )
//		$TaskVar = $TaskVar + 1
//		SetPlayerVar( -1, 3349, $TaskVar )
//		$TaskVar = GetPlayerVar( -1, 3349 )
//		$TaskVar = 3 - $TaskVar
//		BC( "screen", "player", -1, "Exchange succeeds! You can exchange rewards with Mooncake Boxes ",$TaskVar," times!" )
//	}
//	//?????????,??????
//  function OnOption5(){
//	
//		//????
//		$count1 = GetPlayerInfo( -1, "item", 44470 )
//		$count2 = GetPlayerInfo( -1, "item", 44471 )
//		$count3 = GetPlayerInfo( -1, "item", 44472 )
//		$count4 = GetPlayerInfo( -1, "item", 44473 )
//		$count5 = GetPlayerInfo( -1, "item", 44474 )
//		if $count1 < 1
//			BC( "screen", "player", -1, "You don't have the Egg Yolk Mooncake in your bag." )
//			return
//	  endif
//	  if $count2 < 1
//			BC( "screen", "player", -1, "You don't have the Lotus Paste Mooncake in your bag." )
//			return
//	  endif
//	  if $count3 < 1
//			BC( "screen", "player", -1, "You don't have the Ham Mooncake in your bag." )
//			return
//	  endif
//	  if $count4 < 1
//			BC( "screen", "player", -1, "You don't have the red bean Mooncake in your bag." )
//			return
//	  endif
//	  if $count5 < 1
//			BC( "screen", "player", -1, "You don't have the Mooncake Box in your bag." )
//			return
//	  endif
//	  
//
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
//			return
//		endif
//		
//		$result = SubPlayerInfo( -1, "item", 44470, 1 )
//		$result1 = SubPlayerInfo( -1, "item", 44471, 1 )
//		$result2 = SubPlayerInfo( -1, "item", 44472, 1 )
//		$result3 = SubPlayerInfo( -1, "item", 44473, 1 )
//		$result4 = SubPlayerInfo( -1, "item", 44474, 1 )
//
//	
//		//??????
//		
//		if $result != 0		  
//			  return
//		endif
//		if $result1 != 0		  
//			  return
//		endif
//		if $result2 != 0		  
//			  return
//		endif
//		if $result3 != 0		  
//			  return
//		endif
//		if $result4 != 0		  
//			  return
//		endif
//
//		AddPlayerInfo( -1, "item", 44475, 1 )
//		BC( "screen", "player", -1, "Congratulations! You have successfully combined a Mid-Autumn Festival Gift Box!" )
//	}