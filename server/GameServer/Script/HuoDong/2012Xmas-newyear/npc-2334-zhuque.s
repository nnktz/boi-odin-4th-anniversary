//****************************  
//  Copyright:PERFECT WORLD  
//  Modified:2012  
//  Author:???  
//  TaskName:  
//****************************  

	function OnRequest(){ 
		
		$mapid = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		$hour = $hour * 100
		$time = $hour + $minute
		
		if $year == 2012
			if $dayadd < 1228
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
			endif
		endif
		$isgetitem = GetPlayerVar(-1,3445)
		if $isgetitem == $mday
			DisableNpcOption(5)
		endif
		
		$indexW = 362
		while $indexW <= 366
			$serverid = GetServerVar($indexW)
			if $serverid == 0
				$playerid = GetPlayerID()
				SetServerVar($indexW,$playerid)
				$indexW = 999
			else
				$indexW += 1
			endif
		endwhile
	
		call checkresult()

	} 
	
//??1?
	function OnOption0(){
		
		$chipitem1 = GetPlayerInfo(-1,"item",44560)
		$chipitem2 = GetPlayerInfo(-1,"item",44561)
		$totalitem = $chipitem1 + $chipitem2
		if $totalitem < 1
			BC("dialogbox","player",-1,"You dont' have a Lucky Jade.")
			return
		endif
		$max = 1
		call batting()
		
	} 
	
//??10?
	function OnOption1(){ 
		
		$chipitem1 = GetPlayerInfo(-1,"item",44560)
		$chipitem2 = GetPlayerInfo(-1,"item",44561)
		$totalitem = $chipitem1 + $chipitem2
		if $totalitem < 1
			BC("dialogbox","player",-1,"You dont' have a Lucky Jade.")
			return
		endif
		$max = 10
		call batting()
		
	} 
	
//??100?
	function OnOption2(){ 
		
		$chipitem1 = GetPlayerInfo(-1,"item",44560)
		$chipitem2 = GetPlayerInfo(-1,"item",44561)
		$totalitem = $chipitem1 + $chipitem2
		if $totalitem < 1
			BC("dialogbox","player",-1,"You dont' have a Lucky Jade.")
			return
		endif
		$max = 100
		call batting()
		
		
		
	} 
	
//???????!
	function OnOption3(){ 
		
		$chipitem1 = GetPlayerInfo(-1,"item",44560)
		$chipitem2 = GetPlayerInfo(-1,"item",44561)
		$totalitem = $chipitem1 + $chipitem2
		if $totalitem < 1
			BC("dialogbox","player",-1,"You dont' have a Lucky Jade.")
			return
		endif
		$max = $totalitem
		call batting()
		
	} 
	
//????????
	function OnOption5(){ 
		
		$mapid = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		$hour = $hour * 100
		$time = $hour + $minute
		
		if $year == 2012
			if $dayadd < 1228
				return
			endif
		endif
		
		$isgetitem = GetPlayerVar(-1,3445)
		if $isgetitem == $mday
			return
		endif
		
		$playermoney = GetPlayerInfo(-1,"money")
		if $playermoney < 500000
			BC("dialogbox","player",-1,"Insufficient coins!")
			return
		endif
		
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif

		$del_count = SubPlayerInfo(-1,"money",500000)
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo(-1,"item",44560,2)
		SetPlayerVar(-1,3445,$mday)
		
	} 
	
//????????
	function OnOption4(){ 
		
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)
		BC("dialogbox","player",-1,"Current Blessing\n Whispers of Spring: (",$chipQ,")\n Crystal Maid: (",$chipB,")\n Conqueror: (",$chipZ,")\n Burning Sky: (",$chipX,") ")
		
	} 
	
	
	function batting(){
		
//		????
		$playercoin = GetPlayerVar(-1,4100)
		$playergift = GetPlayerVar(-1,4101)
		$lastjoin = GetPlayerVar(-1,3436)
		$lastrace = GetGlobalVar(299)
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)
		$status = GetServerVar(299)
		
		if $status > 0
			BC("dialogbox","player",-1,"The match hasn't finished yet. Please come back later.")
			return
		endif
		
		if $lastrace >= 14
			BC("dialogbox","player",-1,"All matches have finished already.")
			return
		endif
		
		if $chipQ > 0
			$batc += 1
		endif
		if $chipB > 0
			$batc += 1
		endif
		if $chipX > 0
			$batc += 1
		endif
		if $batc >= 2
			BC("dialogbox","player",-1,"You can give your Blessings to two contestants at most!")
			return
		endif
		$chipmax = 2000 - $max
		if $chipZ > $chipmax
			BC("dialogbox","player",-1,"You gave too many Blessings to this contestant. Can not bless him anymore.")
			return
		endif
		
//		????
		$chipitem1 = GetPlayerInfo(-1,"item",44560)
		$chipitem2 = GetPlayerInfo(-1,"item",44561)
		$totalitem = $chipitem1 + $chipitem2
		if $totalitem < $max
			BC("dialogbox","player",-1,"You don't have enough Lucky Jades!")
			return
		endif
		$totalsub = $max
		$subitemid = 44560
		$chipitem = $chipitem1
		if $chipitem >= $totalsub
			$subitem = $totalsub
		else
			$subitem = $chipitem
		endif
		$result = SubPlayerInfo(-1,"item",$subitemid,$subitem)
		if $result == 0
			$totalsub = $totalsub - $subitem
		endif
		$subitemid = 44561
		$chipitem = $chipitem2
		if $chipitem >= $totalsub
			$subitem = $totalsub
		else
			$subitem = $chipitem
		endif
		$result = SubPlayerInfo(-1,"item",$subitemid,$subitem)
		if $result == 0
			$totalsub = $totalsub - $subitem
		endif
		if $totalsub == 0
			$lastjoin = $lastrace + 1
//		$chipQ
//		$chipB
//		$chipZ
//		$chipX
			$chipZ += $max
			BC("dialogbox","player",-1,"Your Blessing was successfully given! The number of Blessings you've given to Conqueror is: \n",$chipZ,".\nRace Notice:\nEvery day during the event, at 20:30 and 20:45, a race will take place. If the contestant you've rooted for, or Blessed, wins their match, you'll receive Commemorative Coins amounting to twice the amount of your Blessings! If the contestant you've Blessed loses their match, you'll still receive prizes amounting to the amount of your Blessings.")
			SetPlayerVar(-1,4079,$chipZ)
			SetPlayerVar(-1,3436,$lastjoin)
			$logitem = 30000 + $max
			SetPlayerActLog(-1,50,$logitem)
			$logitem = 70000 + $chipZ
			SetPlayerActLog(-1,50,$logitem)
//358	??Q
//359	??B
//360	??Z
//361	??X
			$sysbat = GetServerVar(360)
			$sysbat += $max
			SetServerVar(360,$sysbat)
		else
			BC("messagebox","player",-1,"Error occurred! Error code:",$max,"|",$totalsub,"|",$chipitem1,"|",$chipitem2)
		endif
		
	}
	
	function checkresult(){
		
	//-----------????----------------------
		$playercoin = GetPlayerVar(-1,4100)
		$playergift = GetPlayerVar(-1,4101)
		$lastjoin = GetPlayerVar(-1,3436)
		$lastrace = GetGlobalVar(299)
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)
		if $chipQ == 0
			if $chipB == 0
				if $chipZ == 0
					if $chipX == 0
						$isret = 1
					endif
				endif
			endif
		endif
		if $isret == 0
			if $lastjoin > 0
				if $lastrace >= $lastjoin
//45	??????	???	??
//46	??????	???	??Q ??ID=3 monsterid=32565-6
//47	??????	???	??B ??ID=4 monsterid=32371-2
//48	??????	???	??Z ??ID=5 monsterid=32367-8
//49	??????	???	??X ??ID=6 monsterid=32369-70
					SetPlayerActLog(-1,45,$lastrace)
					SetPlayerActLog(-1,46,$chipQ)
					SetPlayerActLog(-1,47,$chipB)
					SetPlayerActLog(-1,48,$chipZ)
					SetPlayerActLog(-1,49,$chipX)
					//???????????,???????global?player??????????
					$race_result_index = 280 + $lastjoin
					$playerindex = 370 + $lastjoin
					$race_result = GetGlobalVar($race_result_index)
					$gift = 0
	//				BC("chat","player",-1,"race_result_index=",$race_result_index)
	//				BC("chat","player",-1,"race_result=",$race_result)
					if $race_result == 0
						BC("messagebox","player",-1,"Query result is wrong! Wrong code. (",$lastrace,"??",$lastjoin,"??",$race_result,"?")
						return
					endif
					if $race_result == 3
						if $chipQ > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipQ * 2
							$chipQ = 0
							SendMail(-1,"Happy Run Result","Congratulations! The Whispers of Spring you rooted for won the last match! You can receive Commemorative Coins equal to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts equal to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"Happy Run Result","Sorry, the contestant you blessed in the last match has lost his match. You can receive a certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipZ
						$gift += $chipX
					endif
					if $race_result == 4
						if $chipZ > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipZ * 2
							$chipZ = 0
							SendMail(-1,"Happy Run Result","Congratulations! The Conqueror you rooted for won the last match! You can receive Commemorative Coins equal to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts equal to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"Happy Run Result","Sorry, the contestant you blessed in the last match has lost his match. You can receive a certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipQ
						$gift += $chipX
					endif
					if $race_result == 5
						if $chipX > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipX * 2
							$chipX = 0
							SendMail(-1,"Happy Run Result","Congratulations! The Burning Sky you rooted for won the last match! You can receive Commemorative Coins equal to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts equal to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"Happy Run Result","Sorry, the contestant you blessed in the last match has lost his match. You can receive a certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipZ
						$gift += $chipQ
					endif
					if $race_result == 6
						if $chipB > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipB * 2
							$chipB = 0
							SendMail(-1,"Happy Run Result","Congratulations! The Crystal Maid you rooted for won the last match! You can receive Commemorative Coins equal to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts equal to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"Happy Run Result","Sorry, the contestant you blessed in the last match has lost his match. You can receive a certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipQ
						$gift += $chipZ
						$gift += $chipX
					endif
					$playercoin += $coin
					$playergift += $gift
					SetPlayerVar(-1,4100,$playercoin)
					SetPlayerVar(-1,4101,$playergift)
//50	??????	???	?coin
//51	??????	???	?gift
					SetPlayerActLog(-1,51,$playercoin)
					SetPlayerActLog(-1,54,$playergift)
					SetPlayerVar(-1,4076,0)
					SetPlayerVar(-1,4077,0)
					SetPlayerVar(-1,4079,0)
					SetPlayerVar(-1,4080,0)
//					BC("chat","player",-1,"GUID:05009000039")
				endif
			endif
		endif
	//-----------????end----------------------
		
	}