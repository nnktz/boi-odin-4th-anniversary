	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/04
	//		Author:??
	//		TaskName:HD-jinzitamenpiao-NPC.s
	//		TaskID:???????,????NPC
	//
	//****************************************
	

	//	3615	??????????????
	//	3617 ?????????	
	//	4207 ?????????	

	function OnRequest(){

		$today_days = GetSystemTime( "yday" )	
		$today_week = GetSystemTime( "week" )
		$hour = GetSystemTime( "hour" )	
		$line = GetServerLineID()

		if $line != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			return
		endif	
		if $today_week != 5
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			return
		endif

		$level = GetPlayerInfo(-1 , "level")
		if $level < 80
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			return
		endif

		if $hour < 21
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif

//0	?????????
//1	???????
//2	??????????
//3	??????????
//4 ??????????
//5 ??????????
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$houradd = $hour * 100
		$time = $houradd + $minute
		if $time >= 2130
			DisableNpcOption(1)
			$playerday = GetPlayerVar(-1,4207)
			if $today_days == $playerday
				DisableNpcOption(2)
				DisableNpcOption(3)
			else
				DisableNpcOption(4)
				DisableNpcOption(5)
			endif
		else
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
		endif

		$last_days = GetPlayerVar(-1,3615)
		if $today_days == $last_days
			DisableNpcOption(0)
			return
		endif

		$a = IsTaskAccept( -1, 4150 )
		if $a == 0
			DisableNpcOption(0)
			return
		endif
		
		$b = IsTaskAccept( -1, 4151 )
		if $b == 0
			DisableNpcOption(0)
			return
		endif
		
		$c = IsTaskAccept( -1, 4152 )
		if $c == 0
			DisableNpcOption(0)
			return
		endif
		
		$d = IsTaskAccept( -1, 4153 )
		if $d == 0
			DisableNpcOption(0)
			return
		endif
		
		$e = IsTaskAccept( -1, 4154 )
		if $e == 0
			DisableNpcOption(0)
			return
		endif
		
		$f = IsTaskAccept( -1, 4155 )
		if $f == 0
			DisableNpcOption(0)
			return
		endif
		
			
	}
	
	//	?????????
	function OnOption0(){
		
		//?????????
		$today_days = GetSystemTime( "yday" )	
		$today_week = GetSystemTime( "week" )
		$times = GetSystemTime( "hour" )	
		$RankList = GetRankListValue( 1, 499 )		
		
		$level = GetPlayerInfo(-1 , "level")
		if $level < 80
			return
		endif
		$last_days = GetPlayerVar(-1,3615)
		if $today_days == $last_days
			return
		endif
		
		//??????
		
		if $RankList < 75
			$revalue = AcceptTask(-1 , 4150)
			//BC( "dialogbox", "player", -1, "GUID:05293000000" )
			if $revalue == 0
				SetPlayerVar(-1, 3615, $today_days)
				SubPlayerInfo(-1 , "item" , 63171 , -1)
				SubPlayerInfo(-1 , "item" , 12261 , -1)
				//????-START
				$TJ_join_number = GetGlobalVar(941)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(941 , $TJ_join_number)
				//????-END
			endif
		endif
		
		//1???60??????4151
		if $RankList >= 75
			if $RankList <= 89
				$revalue = AcceptTask( -1, 4151 )
				//BC( "dialogbox", "player", -1, "GUID:05293000001" )
					if $revalue == 0
						if $revalue == 0
							SetPlayerVar(-1, 3615, $today_days)
							SubPlayerInfo(-1 , "item" , 63171 , -1)
							SubPlayerInfo(-1 , "item" , 12261 , -1)
							//????-START
							$TJ_join_number = GetGlobalVar(941)
							$TJ_join_number = $TJ_join_number + 1
							SetGlobalVar(941 , $TJ_join_number)
							//????-END
						endif
					endif
			endif
		endif
		
		//2???75??????4152
		if $RankList >= 90
			if $RankList <= 99
				$revalue = AcceptTask( -1, 4152 )
				//BC( "dialogbox", "player", -1, "GUID:05293000002" )
					if $revalue == 0
							SetPlayerVar(-1, 3615, $today_days)
							SubPlayerInfo(-1 , "item" , 63171 , -1)
							SubPlayerInfo(-1 , "item" , 12261 , -1)
							//????-START
							$TJ_join_number = GetGlobalVar(941)
							$TJ_join_number = $TJ_join_number + 1
							SetGlobalVar(941 , $TJ_join_number)
							//????-END
					endif
			endif
		endif
		
		//3???90??????4153
		if $RankList >= 100
			if $RankList <= 109
				$revalue = AcceptTask( -1, 4153 )
				//BC( "dialogbox", "player", -1, "GUID:05293000003" )
					if $revalue == 0
							SetPlayerVar(-1, 3615, $today_days)
							SubPlayerInfo(-1 , "item" , 63171 , -1)
							SubPlayerInfo(-1 , "item" , 12261 , -1)
							//????-START
							$TJ_join_number = GetGlobalVar(941)
							$TJ_join_number = $TJ_join_number + 1
							SetGlobalVar(941 , $TJ_join_number)
							//????-END
					endif
			endif
		endif
		
		//4???100??????4154
		if $RankList >= 110
			if $RankList <= 119
				$revalue = AcceptTask( -1, 4154 )
				//BC( "dialogbox", "player", -1, "GUID:05293000004" )
					if $revalue == 0
							SetPlayerVar(-1, 3615, $today_days)
							SubPlayerInfo(-1 , "item" , 63171 , -1)
							SubPlayerInfo(-1 , "item" , 12261 , -1)
							//????-START
							$TJ_join_number = GetGlobalVar(941)
							$TJ_join_number = $TJ_join_number + 1
							SetGlobalVar(941 , $TJ_join_number)
							//????-END
					endif
			endif
		endif
		
		//5???110??????4155
		if $RankList >= 120
				$revalue = AcceptTask( -1, 4155 )
				//BC( "dialogbox", "player", -1, "GUID:05293000005" )
					if $revalue == 0
							SetPlayerVar(-1, 3615, $today_days)
							SubPlayerInfo(-1 , "item" , 63171 , -1)
							SubPlayerInfo(-1 , "item" , 12261 , -1)
							//????-START
							$TJ_join_number = GetGlobalVar(941)
							$TJ_join_number = $TJ_join_number + 1
							SetGlobalVar(941 , $TJ_join_number)
							//????-END
					endif
		endif
		
		SetPlayerVar(-1, 3977, 0)
		$rewardID = $today_days
		SetPlayerActLog(-1,40,$rewardID)

	}
	
//???????
	function OnOption1(){
		
		$yday = GetSystemTime( "yday" )	
		$week = GetSystemTime( "week" )
		$times = GetSystemTime( "hour" )	
		$line = GetServerLineID()
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 80
			BC( "dialogbox", "player", -1, "You're lower than LV80. You cannot enter!" )
			return
		endif
			
		if $line != 6
			return
		endif	
		if $week != 5
			return
		endif
		if $times < 21
			return
		endif
		$level = GetPlayerInfo(-1 , "level")
		if $level < 80
			return
		endif
		
		$result = FlyToMap(-1, 16, 57, 56 )
		
	}
	
//	??????????	
	function OnOption2(){
		
		$yday = GetSystemTime( "yday" )	
		$week = GetSystemTime( "week" )
		$times = GetSystemTime( "hour" )	
		$line = GetServerLineID()
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 80
			BC( "dialogbox", "player", -1, "You're lower than LV80. You cannot enter!" )
			return
		endif
		
		if $line != 6
			return
		endif	
		if $week != 5
			return
		endif
		if $times < 21
			return
		endif
		$level = GetPlayerInfo(-1 , "level")
		if $level < 80
			return
		endif

		$lastday = GetPlayerVar(-1,3617)
		if $lastday == $yday
			BC( "dialogbox", "player", -1, "You have already joined Pyramid Event, and you can't join other events of this kind." )
			return
		endif
		$lastday = GetPlayerVar(-1,4207)
		if $lastday == $yday
			BC( "dialogbox", "player", -1, "You have already joined Pyramid Approach Event, and you can't join other events of this kind." )
			return
		endif
		$getstatus = IsExistStatus(-1,6576)
		if $getstatus != 0
			BC( "dialogbox", "player", -1, "You haven't received Sanctuary of Time, and you will be cursed by the Time when you enter the Pyramid Approach! Please take it from Arlos nearby.\n\nHint: Those who have entered the Pyramid can't join the Pyramid Approach Event any more. \nThose who have joined the Pyramid Approach Event can't enter the Pyramid any more." )
			return
		endif
		
		$result = FlyToMap(-1, 127, 68, 64 )
		SetPlayerVar(-1,4207,$yday)
		CancelTask(-1,1921)
		CancelTask(-1,1920)
		AcceptTask(-1,1920)
		
		
	}
	
//	??????????	
	function OnOption3(){
		
		$yday = GetSystemTime( "yday" )
		$week = GetSystemTime( "week" )
		$times = GetSystemTime( "hour" )
		$line = GetServerLineID()
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 80
			BC( "dialogbox", "player", -1, "You're lower than LV80. You cannot enter!" )
			return
		endif
		
		if $line != 6
			return
		endif
		if $week != 5
			return
		endif
		if $times < 21
			return
		endif
		$level = GetPlayerInfo(-1 , "level")
		if $level < 80
			return
		endif
		
		$lastday = GetPlayerVar(-1,3617)
		if $lastday == $yday
			BC( "dialogbox", "player", -1, "You have already joined Pyramid Event, and you can't join other events of this kind." )
			return
		endif
		$lastday = GetPlayerVar(-1,4207)
		if $lastday == $yday
			BC( "dialogbox", "player", -1, "You have already joined Pyramid Approach Event, and you can't join other events of this kind." )
			return
		endif
		$getstatus = IsExistStatus(-1,6576)
		if $getstatus != 0
			BC( "dialogbox", "player", -1, "You haven't received Sanctuary of Time, and you will be cursed by the Time when you enter the Pyramid Approach! Please take it from Arlos nearby.\n\nHint: Those who have entered the Pyramid can't join the Pyramid Approach Event any more. \nThose who have joined the Pyramid Approach Event can't enter the Pyramid any more." )
			return
		endif
		$result = FlyToMap(-1, 581, 57, 55 )
		SetPlayerVar(-1,4207,$yday)
		CancelTask(-1,1920)
		AcceptTask(-1,1920)
		
	}
	
//	??????????
	function OnOption4(){
		
		$yday = GetSystemTime( "yday" )
		$week = GetSystemTime( "week" )
		$times = GetSystemTime( "hour" )
		$line = GetServerLineID()
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 80
			BC( "dialogbox", "player", -1, "You're lower than LV80. You cannot enter!" )
			return
		endif
		
		if $line != 6
			return
		endif	
		if $week != 5
			return
		endif
		if $times < 21
			return
		endif
		$level = GetPlayerInfo(-1 , "level")
		if $level < 80
			return
		endif
		
		$lastday = GetPlayerVar(-1,4207)
		if $lastday == $yday
			$result = FlyToMap(-1, 127, 68, 64 )
		endif
		
	}

//	??????????
	function OnOption5(){
		
		$yday = GetSystemTime( "yday" )
		$week = GetSystemTime( "week" )
		$times = GetSystemTime( "hour" )
		$line = GetServerLineID()
		
		if $line != 6
			return
		endif	
		if $week != 5
			return
		endif
		if $times < 21
			return
		endif
		$level = GetPlayerInfo(-1 , "level")
		if $level < 80
			return
		endif
		
		$lastday = GetPlayerVar(-1,4207)
		if $lastday == $yday
			$result = FlyToMap(-1, 581, 57, 55 )
		endif
		
	}