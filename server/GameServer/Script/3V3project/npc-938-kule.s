	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013-02
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnRequest(){
		
		$line = GetServerLineID()
		if $line != 5
//			DisableNpcOption(0)
//			DisableNpcOption(1)
//			DisableNpcOption(5)
		endif
		
			DisableNpcOption(5)

		
	}
	
//	??????
	function OnOption0(){
		
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$week = GetSystemTime("week")
		$yday = GetSystemTime("yday")
		$yweek = GetNowWeek()
		
		$houradd = $hour * 100
		$time = $houradd + $minute
		
		$playerid = GetPlayerID()
		$score = PK3V3_GET_SCORE($playerid)
//		BC("chat","player",-1,"|score=",$score)
		$rank = PK3V3_RANK_BY_PLAYERID($playerid)
//		BC("chat","player",-1,"|rank=",$rank)
		
		$line = GetServerLineID()
		if $line != 5
			BC("dialogbox","player",-1,"The Arena in this realm is not open yet, please switch to realm 5.")
			return
		endif
		
		if $week != 0
			BC("dialogbox","player",-1,"The Warsoul Arena is open every Sunday!")
			return
		endif
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 90
			BC("dialogbox","player",-1,"Cannot take part in the Warsoul Arena until LV 90.")
			return
		endif
		
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$houradd = $hour * 100
		$time = $houradd + $minute
		if $time < 1930
			BC("dialogbox","player",-1,"The Warsoul Arena is not activated yet, you can't check your ranking or score now!")
			return
		endif
		
		if $score > 0
			BC("dialogbox","player",-1,"Welcome, warrior! \n\nYour score in the Warsoul Arena this week is ",$score,".\nNow your ranking is ",$rank,".\n\n (Players ranking in the first 150 can get the Ranking Reward. \nPlayers ranking in the last 150 can get a Participation Reward.)")
		else
			BC("dialogbox","player",-1,"Sorry, there is no record about your ranking or score at the moment!")
		endif
		
		
	}
	
//	??
	function OnOption1(){
		
		$playerid = GetPlayerID()
		$score = PK3V3_GET_SCORE($playerid)
//		BC("chat","player",-1,"|score=",$score)
		$rank = PK3V3_RANK_BY_PLAYERID($playerid)
//		BC("chat","player",-1,"|rank=",$rank)
		
		$line = GetServerLineID()
		if $line != 5
			BC("dialogbox","player",-1,"The Arena in this realm is not open yet, please switch to realm 5.")
			return
		endif
		
		$week = GetSystemTime("week")
		if $week != 0
			BC("dialogbox","player",-1,"The Warsoul Arena is open every Sunday!")
			return
		endif
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 90
			BC("dialogbox","player",-1,"Cannot take part in the Warsoul Arena until LV 90.")
			return
		endif
		
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$houradd = $hour * 100
		$time = $houradd + $minute
		if $time < 2030
			BC("dialogbox","player",-1,"Please receive your reward after the event!")
			return
		endif
		
		$isdone = GetServerVar(387)
		if $isdone != 9
			BC("dialogbox","player",-1,"Please receive your reward after the event!")
			return
		endif
		
		if $score < 1
			BC("dialogbox","player",-1,"Sorry, you received no score in the Warsoul Arena this week, so you did not enter the ranking list and earned no reward.")
			return
		endif
		
		$IsHaveReward = GetPlayerVar(-1,141)
		if $IsHaveReward != 1
			BC("dialogbox","player",-1,"There is no reward to take!")
			return
		endif
		
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
		SetPlayerVar(-1,141,0)
		BC("dialogbox","player",-1,"Enjoy your prize!")
		//-----------------------------------------
		if $rank >= 1		
			if $rank <= 1	
				AddPlayerInfo(-1,"item",44690,1)
			endif	
		endif		
				
		if $rank >= 2		
			if $rank <= 2	
				AddPlayerInfo(-1,"item",44691,1)
			endif	
		endif		
				
		if $rank >= 3		
			if $rank <= 3	
				AddPlayerInfo(-1,"item",44692,1)
			endif	
		endif		
				
		if $rank >= 4		
			if $rank <= 6	
				AddPlayerInfo(-1,"item",44693,1)
			endif	
		endif		
				
		if $rank >= 7		
			if $rank <= 10	
				AddPlayerInfo(-1,"item",44694,1)
			endif	
		endif		
				
		if $rank >= 11		
			if $rank <= 20	
				AddPlayerInfo(-1,"item",44695,1)
			endif	
		endif		
				
		if $rank >= 21		
			if $rank <= 30	
				AddPlayerInfo(-1,"item",44696,1)
			endif	
		endif		
				
		if $rank >= 31		
			if $rank <= 40	
				AddPlayerInfo(-1,"item",44697,1)
			endif	
		endif		
				
		if $rank >= 41		
			if $rank <= 70	
				AddPlayerInfo(-1,"item",44698,1)
			endif	
		endif		
				
		if $rank >= 71		
			if $rank <= 150	
				AddPlayerInfo(-1,"item",44699,1)
			endif	
		endif		
				
		if $rank >= 151		
			if $rank <= 300	
				AddPlayerInfo(-1,"item",44868,1)
			endif	
		endif		
				
		if $rank >= 301		
			if $rank <= 65535	
				AddPlayerInfo(-1,"item",44700,1)
			endif	
		endif		

		//-----------------------------------------
		
		
		
		
		
	}
	
//	(?????????)
	function OnOption2(){
		
		BC("dialogbox","player",-1,"Victory Score: Winning one match can award 100 points. \n\n Winning Streak Score: The more victories your winning streak, the more points will be rewarded. \n\n Knell Score: Ending the oppoents' winning streak can get a lot of points. \n\nFailure Score: Even the loser in the match can get a small amount of points. \n\nOther reward scores like First Kill Score, Killing Spree Score \nGlory Winning Streak Score.")
		
	}
//	(??????????)
	function OnOption3(){
		
		BC("dialogbox","player",-1,"Extra Rewards: \nJust Another Kill +1: every target member can dedicate at most 2.\nWarsoul: First Blood: take part in the Warsoul Arena to get First Blood.\nWarsoul: 5 Kills: take part in the Warsoul Arena to get 5 Kills.\nKilling Spree: win once to get 10, 20, 30......Kills.\nTwice in a Row: win twice in a row.\nFive Times in a Row: win 5 times in a row.\n")

	}
	
	//	(?????????)
	function OnOption4(){
		
		BC("dialogbox","player",-1,"When the match is over, each player that participated in the match and received points can get rewards from me. \n\nThe players ranking in the first 150 will show on the ranking list. \nThe players ranking in the last 150 can get a comfort reward.")

	}
	
	//	???????????
	function OnOption5(){
		
				$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$week = GetSystemTime("week")
		$yday = GetSystemTime("yday")
		$yweek = GetNowWeek()
		
		$houradd = $hour * 100
		$time = $houradd + $minute
		
		$playerid = GetPlayerID()
		$score = PK3V3_GET_SCORE($playerid)
//		BC("chat","player",-1,"|score=",$score)
		$rank = PK3V3_RANK_BY_PLAYERID($playerid)
//		BC("chat","player",-1,"|rank=",$rank)
		
		$line = GetServerLineID()
		if $line != 5
			BC("dialogbox","player",-1,"The Arena in this realm is not open yet, please switch to realm 5.")
			return
		endif
		
		if $week != 0
			BC("dialogbox","player",-1,"The Warsoul Arena is open every Sunday!")
			return
		endif
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 90
			BC("dialogbox","player",-1,"Cannot take part in the Warsoul Arena until LV 90.")
			return
		endif
		
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$houradd = $hour * 100
		$time = $houradd + $minute
		if $time < 1930
			BC("dialogbox","player",-1,"The Warsoul Arena is not activated yet, you can't check your ranking or score now!")
			return
		endif

		$pid = PK3V3_PLAYERID_BY_RANK(1)
		if $pid > 0
			$getlevel = GetPlayerInfo($pid,"level")
			if $getlevel > 0
				#name1 = GetPlayerInfo($pid,"name")
				$PT1 = PK3V3_GET_SCORE($pid)
			else
				#name1 = "(Currently offline)"
				$PT1 = 0
			endif
		else
			#name1 = "(Currently offline)"
			$PT1 = 0
		endif

		$pid = PK3V3_PLAYERID_BY_RANK(2)
		if $pid > 0
			$getlevel = GetPlayerInfo($pid,"level")
			if $getlevel > 0
				#name2 = GetPlayerInfo($pid,"name")
				$PT2 = PK3V3_GET_SCORE($pid)
			else
				#name2 = "(Currently offline)"
				$PT2 = 0
			endif
		else
			#name2 = "(Currently offline)"
			$PT2 = 0
		endif

		$pid = PK3V3_PLAYERID_BY_RANK(3)
		if $pid > 0
			$getlevel = GetPlayerInfo($pid,"level")
			if $getlevel > 0
				#name3 = GetPlayerInfo($pid,"name")
				$PT3 = PK3V3_GET_SCORE($pid)
			else
				#name3 = "(Currently offline)"
				$PT3 = 0
			endif
		else
			#name3 = "(Currently offline)"
			$PT3 = 0
		endif
		
		BC("dialogbox","player",-1,"Server Leaderboard: \nrank first:",#name1,", Score:",$PT1,"\nrank second:",#name2,", Score:",$PT2,"\nrank third:",#name3,", Score:",$PT3)
		
		
	}