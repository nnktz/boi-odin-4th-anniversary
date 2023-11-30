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
		
		if $year > 2013
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
		else
			if $dayadd < 429
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
			endif
			if $dayadd <= 505
				DisableNpcOption(3)
			endif
		endif
		
		//???id???AI
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

//?????????
	function OnOption0(){
		
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
		
		if $year > 2013
			return
		else
			if $dayadd < 429
				return
			endif
		endif
		
		$playercoin = GetPlayerVar(-1,4100)
		$playergift = GetPlayerVar(-1,4101)
		if $playercoin == 0
			if $playergift == 0
				BC("dialogbox","player",-1,"There is no reward to take.")
				return
			endif
		endif
		$playercoin_ori = $playercoin
		$playergift_ori = $playergift
		$playercoin_add = 0
		$playergift_add = 0
		
		
//		???
		while $playercoin > 255
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .\n Insufficient bag slots! You need to clear some space in your bag to take the rest Commemorative Coins.")
				SetPlayerVar(-1,4100,$playercoin)
				SetPlayerVar(-1,4101,$playergift)
				call setlog()
				return
			endif
			AddPlayerInfo(-1,"item",44562,255)
			$playercoin_add += 255
			$playercoin -= 255
		endwhile
		if $playercoin > 0
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .\n Insufficient bag slots! You need to clear some space in your bag to take the rest Commemorative Coins.")
				SetPlayerVar(-1,4100,$playercoin)
				SetPlayerVar(-1,4101,$playergift)
				call setlog()
				return
			endif
			AddPlayerInfo(-1,"item",44562,$playercoin)
			$playercoin_add += $playercoin
			$playercoin -= $playercoin
		endif
//		???
		while $playergift > 255
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .\n Insufficient bag slots! You need to clear some space in your bag to take the rest Commemorative Coins.")
				SetPlayerVar(-1,4100,$playercoin)
				SetPlayerVar(-1,4101,$playergift)
				call setlog()
				return
			endif
			AddPlayerInfo(-1,"item",44563,255)
			$playergift_add += 255
			$playergift -= 255
		endwhile
		if $playergift > 0
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .\n Insufficient bag slots! You need to clear some space in your bag to take the rest Commemorative Coins.")
				SetPlayerVar(-1,4100,$playercoin)
				SetPlayerVar(-1,4101,$playergift)
				call setlog()
				return
			endif
			AddPlayerInfo(-1,"item",44563,$playergift)
			$playergift_add += $playergift
			$playergift -= $playergift
		endif
		
		BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .")
		SetPlayerVar(-1,4100,$playercoin)
		SetPlayerVar(-1,4101,$playergift)
		call setlog()
		
		
		
	}
//???????
	function OnOption1(){
		
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
		
		if $year > 2013
			return
		else
			if $dayadd < 429
				return
			endif
		endif
		
		//??????????
		$race_result_index = 281
		$playerindex = 371
		$win = 0
		$match = 0
		//?????,??18,?298
		while $race_result_index <= 294
			$sysg = GetGlobalVar($race_result_index)
			$playerg = GetPlayerVar(-1,$playerindex)
			//??????,race_result_index??????1????
			$playindex = $race_result_index - 280
			if $sysg > 0
				$match += 1
				if $playerg == 1
					$win += 1
//					BC("chat","player",-1,"GUID:05006000031",$playindex,"GUID:05006000032")
					$result = 1
					call textresult()
				else
//					BC("chat","player",-1,"GUID:05006000033",$playindex,"GUID:05006000034")
					$result = 2
					call textresult()
				endif
			else
//					BC("chat","player",-1,"GUID:05006000035",$playindex,"GUID:05006000036")
					$result = 0
					call textresult()
			endif
			$race_result_index += 1
			$playerindex += 1
		endwhile

		$playercoin = GetPlayerVar(-1,4100)
		$playergift = GetPlayerVar(-1,4101)
		$lastjoin = GetPlayerVar(-1,3436)
		$lastrace = GetGlobalVar(299)
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)
		
//		BC("chat","player",-1,"match=",$match)
//		BC("chat","player",-1,"win=",$win)
//		BC("chat","player",-1,"playercoin=",$playercoin)
//		BC("chat","player",-1,"playergift=",$playergift)
//		BC("chat","player",-1,"lastjoin=",$lastjoin)
//		BC("chat","player",-1,"lastrace=",$lastrace)

		$win100 = $win * 100
		$winra = $win100 / $match
		
//		BC("dialogbox","player",-1,"Past Records:",#res1,#res2,#res3,#res4,#res5,#res6,#res7,#res8)
		BC("dialogbox","player",-1,"Victory:",$win," / ",$match,"Win Rate:",$winra,"%","\nAvailable Commemorative Coins:",$playercoin,"\nAvailable small gifts:",$playergift,"\nBlessed Whispers of Spring:",$chipQ,"\nBlessed Crystal Maid:",$chipB,"\nBlessed Conqueror:",$chipZ,"\nBlessed Burning Sky:",$chipX)

		
		
	}
	
	
//????????
	function OnOption2(){
		
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
		
		if $year > 2013
			return
		else
			if $dayadd < 429
				return
			endif
		endif
		
		//??????????
		$race_result_index = 281
		$playerindex = 371
		$win = 0
		$match = 0
		//?????,??18,?298
		while $race_result_index <= 294
			$sysg = GetGlobalVar($race_result_index)
			$playerg = GetPlayerVar(-1,$playerindex)
			//??????,race_result_index??????1????
			$playindex = $race_result_index - 280
//			$sysg = RandomNumber(0,6)
//			$playerg = RandomNumber(0,1)
			if $sysg > 0
				$match += 1
				if $playerg == 1
					$win += 1
//					BC("chat","player",-1,"GUID:05006000046",$playindex,"GUID:05006000047")
					$result = 1
					call textresult()
				else
//					BC("chat","player",-1,"GUID:05006000048",$playindex,"GUID:05006000049")
					$result = 2
					call textresult()
				endif
			else
//					BC("chat","player",-1,"GUID:05006000050",$playindex,"GUID:05006000051")
					$result = 0
					call textresult()
			endif
			$race_result_index += 1
			$playerindex += 1
		endwhile
		
		$playercoin = GetPlayerVar(-1,4100)
		$playergift = GetPlayerVar(-1,4101)
		$lastjoin = GetPlayerVar(-1,3436)
		$lastrace = GetGlobalVar(299)
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)
		
//		BC("chat","player",-1,"match=",$match)
//		BC("chat","player",-1,"win=",$win)
//		BC("chat","player",-1,"playercoin=",$playercoin)
//		BC("chat","player",-1,"playergift=",$playergift)
//		BC("chat","player",-1,"lastjoin=",$lastjoin)
//		BC("chat","player",-1,"lastrace=",$lastrace)

		$win100 = $win * 100
		$winra = $win100 / $match
//		longdialogbox
		BC("longdialogbox","player",-1,"{#ffffffff=Past Records: #}",#res1,#res2,#res3,#res4,#res5,#res6,#res7,#res8,#res9,#res10,#res11,#res12,#res13,#res14,#res15,#res16,#res17,#res18,"")
//		BC("dialogbox","player",-1,"Victory:",$win," / ",$match,"Win Rate:",$winra,"%","\nAvailable Commemorative Coins:",$playercoin,"\nAvailable small gifts:",$playergift,"GUID:05006000057",$chipQ,"GUID:05006000058",$chipB,"GUID:05006000059",$chipZ,"GUID:05006000060",$chipX)

		
		
	}
	
	
//??????????
	function OnOption3(){
		
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
		
		if $year > 2013
			return
		else
			if $dayadd < 429
				return
			endif
			if $dayadd <= 505
				return
			endif
		endif
		
		$chipitem1 = GetPlayerInfo(-1,"item",44560)
		$chipitem2 = GetPlayerInfo(-1,"item",44561)
		$totalitem = $chipitem1 + $chipitem2
		if $totalitem < 1
			BC("dialogbox","player",-1,"You dont' have a Lucky Jade.")
			return
		endif
		
		SubPlayerInfo(-1,"item",44560,$chipitem1)
		SubPlayerInfo(-1,"item",44561,$chipitem2)
		
		$totalitem_ori = $totalitem
		while $totalitem > 200
			AddPlayerInfo(-1,"item",44563,200)
			$totalitem -= 200
		endwhile
		AddPlayerInfo(-1,"item",44563,$totalitem)
		BC("dialogbox","player",-1,"You've received",$totalitem_ori," small gifts.")
		
		
		
	}
	
	
	
	function textresult(){
		
//			if $sysg > 0
//				$match += 1
//				if $playerg == 1
//					$win += 1
//					BC("chat","player",-1,"GUID:05006000064",$playindex,"GUID:05006000065")
//					$result = 1
//					call textresult()
//				else
//					BC("chat","player",-1,"GUID:05006000066",$playindex,"GUID:05006000067")
//					$result = 2
//					call textresult()
//				endif
//			else
//					BC("chat","player",-1,"GUID:05006000068",$playindex,"GUID:05006000069")
//					$result = 0
//					call textresult()
//			endif

		if $playindex == 1
		#res1	=	" "
			if $result == 0
				#res1 = "\n{#ffF0F0F0=1st Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res1 = "\n{#ffF0F0F0=1st Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res1 = "\n{#ffF0F0F0=1st Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 2
		#res2	=	" "
			if $result == 0
				#res2 = "\n{#ffF0F0F0=2nd Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res2 = "\n{#ffF0F0F0=2nd Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res2 = "\n{#ffF0F0F0=2nd Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 3
		#res3	=	" "
			if $result == 0
				#res3 = "\n{#ffF0F0F0=3rd Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res3 = "\n{#ffF0F0F0=3rd Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res3 = "\n{#ffF0F0F0=3rd Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 4
		#res4	=	" "
			if $result == 0
				#res4 = "\n{#ffF0F0F0=4th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res4 = "\n{#ffF0F0F0=4th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res4 = "\n{#ffF0F0F0=4th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 5
		#res5	=	" "
			if $result == 0
				#res5 = "\n{#ffF0F0F0=5th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res5 = "\n{#ffF0F0F0=5th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res5 = "\n{#ffF0F0F0=5th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 6
		#res6	=	" "
			if $result == 0
				#res6 = "\n{#ffF0F0F0=6th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res6 = "\n{#ffF0F0F0=6th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res6 = "\n{#ffF0F0F0=6th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 7
		#res7	=	" "
			if $result == 0
				#res7 = "\n{#ffF0F0F0=7th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res7 = "\n{#ffF0F0F0=7th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res7 = "\n{#ffF0F0F0=7th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 8
		#res8	=	" "
			if $result == 0
				#res8 = "\n{#ffF0F0F0=8th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res8 = "\n{#ffF0F0F0=8th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res8 = "\n{#ffF0F0F0=8th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 9
		#res9	=	" "
			if $result == 0
				#res9 = "\n{#ffF0F0F0=9th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res9 = "\n{#ffF0F0F0=9th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res9 = "\n{#ffF0F0F0=9th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 10
		#res10	=	" "
			if $result == 0
				#res10 = "\n{#ffF0F0F0=10th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res10 = "\n{#ffF0F0F0=10th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res10 = "\n{#ffF0F0F0=10th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 11
		#res11	=	" "
			if $result == 0
				#res11 = "\n{#ffF0F0F0=11th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res11 = "\n{#ffF0F0F0=11th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res11 = "\n{#ffF0F0F0=11th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 12
		#res12	=	" "
			if $result == 0
				#res12 = "\n{#ffF0F0F0=12th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res12 = "\n{#ffF0F0F0=12th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res12 = "\n{#ffF0F0F0=12th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 13
		#res13	=	" "
			if $result == 0
				#res13 = "\n{#ffF0F0F0=13th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res13 = "\n{#ffF0F0F0=13th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res13 = "\n{#ffF0F0F0=13th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 14
		#res14	=	" "
			if $result == 0
				#res14 = "\n{#ffF0F0F0=14th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res14 = "\n{#ffF0F0F0=14th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res14 = "\n{#ffF0F0F0=14th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 15
		#res15	=	" "
			if $result == 0
				#res15 = "\n{#ffF0F0F0=15th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res15 = "\n{#ffF0F0F0=15th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res15 = "\n{#ffF0F0F0=15th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 16
		#res16	=	" "
			if $result == 0
				#res16 = "\n{#ffF0F0F0=16th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res16 = "\n{#ffF0F0F0=16th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res16 = "\n{#ffF0F0F0=16th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 17
		#res17	=	" "
			if $result == 0
				#res17 = "\n{#ffF0F0F0=17th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res17 = "\n{#ffF0F0F0=17th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res17 = "\n{#ffF0F0F0=17th Round: #}{#ffFFF000=Guess wrong#}"
			endif
		endif
		if $playindex == 18
		#res18	=	" "
			if $result == 0
				#res18 = "\n{#ffF0F0F0=18th Round: #}{#ffA0A0A0=Unfinished#}"
			endif
			if $result == 1
				#res18 = "\n{#ffF0F0F0=18th Round: #}{#ff00F000=Guess right#}"
			endif
			if $result == 2
				#res18 = "\n{#ffF0F0F0=18th Round: #}{#ffFFF000=Guess wrong#}"
			endif
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
						BC("messagebox","player",-1,"Query result is wrong! Wrong code. (",$lastrace,")",$lastjoin,")",$race_result,"?")
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
//					BC("chat","player",-1,"GUID:05006000144")
				endif
			endif
		endif
	//-----------????end----------------------
		
	}
	
	
	function setlog(){
		
//		SetPlayerVar(-1,4100,$playercoin)
//		SetPlayerVar(-1,4101,$playergift)
//50	??????	???	?????
//51	??????	???	??coin
//52	??????	???	??coin
//53	??????	???	??coin
//54	??????	???	??gift
//55	??????	???	??gift
//56	??????	???	coingift

		SetPlayerActLog(-1,51,$playercoin_ori)
		SetPlayerActLog(-1,52,$playercoin_add)
		SetPlayerActLog(-1,53,$playercoin)
		SetPlayerActLog(-1,54,$playergift_ori)
		SetPlayerActLog(-1,55,$playergift_add)
		SetPlayerActLog(-1,56,$playergift)
		
	}