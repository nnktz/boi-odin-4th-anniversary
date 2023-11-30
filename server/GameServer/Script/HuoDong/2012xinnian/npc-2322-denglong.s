
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-12
	//		Author:???
	//		TaskName:2012????
	//		TaskID:
	//
	//****************************************

	function OnRequest(){

		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		if $year != 2012
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		else
			if $month != 1
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				if $mday < 21
					DisableNpcOption(0)
					DisableNpcOption(1)
					DisableNpcOption(2)
				endif
			endif
		endif

	}

	function OnOption0(){
//????

		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		if $year != 2012
			return
		else
			if $month != 1
				return
			else
				if $mday < 21
					return
				endif
			endif
		endif

		$yday = GetSystemTime("yday")
		$playerid = GetPlayerID()
		$playerday = GetPlayerVar($playerid,4014)
		$level = GetPlayerInfo($playerid,"level")

		if $level < 60
			BC("dialogbox","player",-1,"You must be at least LV60 to take part in the event.")
			return
		endif

		if $playerday == $yday
			BC("dialogbox","player",-1,"You've already received your reward today!")
			return
		endif

		$taskid = 1821
		$taskacced = IsTaskAccept($playerid,$taskid)
		if $taskacced == 0
			BC("dialogbox","player",-1,"Please finish the Happy Spring Festival quest first!")
			return
		endif

		$count = GetTaskCount($playerid)
		if $count > 20
			BC("dialogbox","player",-1,"Your quest list is full, can't acquire quest.")
			return
		endif

		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif

//44155	????
//44153	?????
		SetPlayerVar($playerid,4014,$yday)
		$taskid = 1821
		AcceptTask($playerid,$taskid)
		AddPlayerInfo($playerid,"item",44155,1)
		BC("dialogbox","player",-1,"You have received the Blessing of Spring Festival. \nYou can take part in the New Year's Beast Event at 8: 00 pm. \n\nYou have received the quest of Happy Spring Festival.")

	}



	function OnOption1(){
//????

		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		if $year != 2012
			return
		else
			if $month != 1
				return
			else
				if $mday < 21
					return
				endif
			endif
		endif

		$gethour = GetSystemTime("hour")
		if $gethour < 19
			BC("dialogbox","player",-1,"Please accept the New Year's Beast Event!")
			return
		endif
		if $gethour > 20
			BC("dialogbox","player",-1,"Please accept the New Year's Beast Event!")
			return
		endif

		$yday = GetSystemTime("yday")
		$playerid = GetPlayerID()
		$playerday = GetPlayerVar($playerid,4048)
		$level = GetPlayerInfo($playerid,"level")

		if $level < 60
			BC("dialogbox","player",-1,"You must be at least LV60 to take part in the event.")
			return
		endif

		if $playerday == $yday
			BC("dialogbox","player",-1,"You've already received your reward today!")
			return
		endif

		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif

//44153	?????
		SetPlayerVar($playerid,4048,$yday)
		AddPlayerInfo($playerid,"item",44153,2)
		BC("dialogbox","player",-1,"You've received the Large Skysoaring Firecracker! Hope you have an Endless Luck!")


	}
	
	function OnOption2(){
//?????????????
		
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		if $year != 2012
			return
		else
			if $month != 1
				return
			else
				if $mday < 21
					return
				endif
			endif
		endif
		
		$gethour = GetSystemTime("hour")
		if $gethour < 20
			BC("dialogbox","player",-1,"Please come after the New Year's Beast Event!")
			return
		endif
		$getminute = GetSystemTime("minute")
		if $getminute < 15
			BC("dialogbox","player",-1,"Please come after the New Year's Beast Event!")
			return
		endif
		
		$playerid = GetPlayerID()
		$score = GetPlayerVar($playerid,4015)
		$joinday = GetPlayerVar($playerid,4049)
		$getyday = GetSystemTime("yday")
		if $joinday != $getyday
			BC("dialogbox","player",-1,"Sorry, you haven't taken part in the New Year's Beast Event, can't get any rewards.")
			return
		endif
		if $score == 1
			BC("dialogbox","player",-1,"Sorry, you have received your rewards today, can't receive any more.")
			return
		endif
		
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$countbag = GetGlobalVar(65)
		
		if $score < 999
			if $score >= 625
				AddPlayerInfo($playerid,"item",44157,5)
				BC("dialogbox","player",-1,"During the event, you got ",$score,"Points! Please take 5 CNY Beast Giftbags.")
				$countbag = $countbag + 5
			endif
		endif
		
		if $score < 625
			if $score >= 450
				AddPlayerInfo($playerid,"item",44157,3)
				BC("dialogbox","player",-1,"During the event, you got ",$score,"Points! Please take 3 CNY Beast Giftbags.")
				$countbag = $countbag + 3
			endif
		endif
		
		if $score < 450
			if $score >= 250
				AddPlayerInfo($playerid,"item",44157,1)
				BC("dialogbox","player",-1,"During the event, you got ",$score,"Points! Please take 1 CNY Beast Giftbag.")
				$countbag = $countbag + 1
			endif
		endif
		
		if $score < 250
			if $score >= 0
				AddPlayerInfo($playerid,"item",59615,1)
				BC("dialogbox","player",-1,"During the event, you got ",$score,"Points! Please take a New Year's EXP Card.")
			endif
		endif
		
		SetPlayerVar($playerid,4015,1)
		SetGlobalVar(65,$countbag)

		
//59615	?????
//59103	????????
//44155	????
//44156	????
//44157	????

	}