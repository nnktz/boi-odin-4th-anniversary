	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/01
	//		Author:???
	//		TaskName:NPC-1163-wabao.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		//????4?16?--5?16?
		$nian = GetSystemTime("year")
		$yue = GetSystemTime("month")
		$ri = GetSystemTime("mday")
		
		if $nian != 2013
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $yue != 4
			if $yue != 5
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		
		if $yue == 4
			if $ri < 16
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		
		if $yue == 5
			if $ri > 16
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		
	}
	
	function OnOption0(){
		
		//????3361,?????????????
		//????4203,????
		//75~89  ??1:??40???????10085  ??????????
    //90~114 ??2:??40??????10174    ??????????
    //115~125??3:??40???????21202  ??????????
    //??up ??4:??30??????12003    ??????????
		
		$cishu = GetPlayerVar(-1,3361)
		$now_day = GetSystemTime( "yday" )
		$last_day = GetPlayerVar(-1,4203)
		$fieldlevel = GetFieldLevel(-1)
		$level = GetPlayerInfo(-1,"level")
		
		if $level < 75
			BC("screen","player",-1,"Unable to know the Treasure Secret. You need to be LV75 first.")
			return
		endif
		
		$team = IsPlayerInTeam(-1)
		if $team == 0
			BC("dialogbox","player",-1,"I will tell you the Treasure Secret. Please quit the party to take the quest.")
			return
		endif
		
		$task1 = IsTaskAccept(-1,1895)
		if $task1 == 0
			BC( "dialogbox", "player", -1, "You've already accepted Aphrodite's Treasure quest. Return once you've completed it!" )
			return
		endif
		
		$task2 = IsTaskAccept(-1,1896)
		if $task2 == 0
			BC( "dialogbox", "player", -1, "You've already accepted Aphrodite's Treasure quest. Return once you've completed it!" )
			return
		endif
		
		$task3 = IsTaskAccept(-1,1897)
		if $task3 == 0
			BC( "dialogbox", "player", -1, "You've already accepted Aphrodite's Treasure quest. Return once you've completed it!" )
			return
		endif
		
		$task4 = IsTaskAccept(-1,1898)
		if $task4 == 0
			BC( "dialogbox", "player", -1, "You've already accepted Aphrodite's Treasure quest. Return once you've completed it!" )
			return
		endif
		
		if $now_day == $last_day
			if $cishu >= 20
				BC("screen","player",-1,"I have told you enough. Please come back tomorrow!")
				return
			endif
		else
			SetPlayerVar(-1,3361,0)
		endif
		
		if $level < 90
			$result = AcceptTask(-1,1895)
			SetPlayerVar(-1,4203,$now_day)
		endif
		
		if $level > 89
			if $level < 115
				$result = AcceptTask(-1,1896)
				SetPlayerVar(-1,4203,$now_day)
			endif
		endif
		
		if $fieldlevel < 1
			if $level > 114
				$result = AcceptTask(-1,1897)
				SetPlayerVar(-1,4203,$now_day)
			endif
		else
			$result = AcceptTask(-1,1898)
			SetPlayerVar(-1,4203,$now_day)
		endif
															
		
	}
	
	function OnOption1(){
		
		$cailiao1 = GetPlayerInfo(-1,"item",44717)
		$cailiao2 = GetPlayerInfo(-1,"item",44718)
		$cailiao3 = GetPlayerInfo(-1,"item",44719)
		$cailiao4 = GetPlayerInfo(-1,"item",44720)
		$cailiao5 = GetPlayerInfo(-1,"item",44721)
		
		if $cailiao1 < 1
			BC("screen","player",-1,"You don't have enough materials to exchange!")
			return
		endif
		
		if $cailiao2 < 1
			BC("screen","player",-1,"You don't have enough materials to exchange!")
			return
		endif
		
		if $cailiao3 < 1
			BC("screen","player",-1,"You don't have enough materials to exchange!")
			return
		endif
		
		if $cailiao4 < 1
			BC("screen","player",-1,"You don't have enough materials to exchange!")
			return
		endif
		
		if $cailiao5 < 1
			BC("screen","player",-1,"You don't have enough materials to exchange!")
			return
		endif
		
		$result1 = SubPlayerInfo(-1,"item",44717,1)
		$result2 = SubPlayerInfo(-1,"item",44718,1)
		$result3 = SubPlayerInfo(-1,"item",44719,1)
		$result4 = SubPlayerInfo(-1,"item",44720,1)
		$result5 = SubPlayerInfo(-1,"item",44721,1)
		if $result1 == 0
			if $result2 == 0
				if $result3 == 0
					if $result4 == 0
						if $result5 == 0
							$baotu = 44743
							$ran = RandomNumber(1,10)
							$gaotu = $baotu + $ran
							AddPlayerInfo(-1,"item",$gaotu,1)
							return
						else
							BC("screen","player",-1,"Unknown error")
						endif
					else
						BC("screen","player",-1,"Unknown error")
					endif
				else
					BC("screen","player",-1,"Unknown error")
				endif
			else
				BC("screen","player",-1,"Unknown error")
			endif
		else
			BC("screen","player",-1,"Unknown error")
		endif
	}