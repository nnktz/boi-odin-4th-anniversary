	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/04
	//		Author:??
	//		TaskName:HD-jinzitamenpiao-NPC2.s
	//		TaskID:???????,????NPC
	//
	//****************************************


	//	3615		??????????????
	//3214,???????????????????
	//3617,?????????????????
	function OnRequest(){

		$today_week = GetSystemTime( "week" )

		//??6??
		$line = GetServerLineID()
		if $line != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif

		//???5????
		if $today_week != 5
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			return
		endif

		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$houradd = $hour * 100
		$time = $houradd + $minute
		if $time < 2100
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $time < 2130
			DisableNpcOption(2)
		endif

		//????40???,???????
		$ticket_number = GetServerVar(23)
		if $ticket_number >= 40
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif

		$getstatus = IsExistStatus(-1,6576)
		if $getstatus == 0
			DisableNpcOption(2)
		endif

		$playerday = GetPlayerVar(-1,4207)
		$today_days = GetSystemTime("yday")
		if $today_days == $playerday
			DisableNpcOption(2)
		endif

	}

	//???,???????
	function OnOption0(){

		$line = GetServerLineID()
		if $line != 6
			return
		endif

		$count = GetPlayerInfo( -1, "item", 63171)
		if $count == 0
			BC( "dialogbox", "player", -1, "You must fill out form PYR-1035 from Nyss before I can give you a Pyramid Passport." )
			return
		endif
		$ticket_number = GetServerVar(23)
		if $ticket_number >= 40
			BC( "dialogbox", "player", -1, "All the Pyramid Passports have been distributed." )
			return
		endif

		$today_days = GetSystemTime( "yday" )
		$last_days = GetPlayerVar(-1,3615)

		//??????????,??????,?????.????
		if $today_days != $last_days
			BC( "dialogbox", "player", -1, "Your Guild Proof is not for today's race,there is no way to cheat,I will take it and give you the common reward." )
			$revalue = SubPlayerInfo(-1 , "item" , 63171 , 1)
			if $revalue == 0
				$rewardID = $today_days + 11000
				SetPlayerActLog(-1,40,$rewardID)
				$level = GetPlayerInfo( -1, "level" )
				$a = $level * $level
				$add_exp = $a * 14
				AddPlayerInfo(-1 , "exp" , $add_exp)
			endif
			return
		endif

		//?????????(??3977)??,?????.????
		//~ $last_days = GetPlayerVar(-1,3977)
		//~ if $today_days != $last_days
			//~ BC( "dialogbox", "player", -1, "Your Guild Proof is not for today's race, there is no way to cheat, I will take it and give you the common reward!" )
			//~ $revalue = SubPlayerInfo(-1 , "item" , 63171 , 1)
			//~ if $revalue == 0
				//~ $rewardID = $today_days + 12000
				//~ SetPlayerActLog(-1,40,$rewardID)
				//~ $level = GetPlayerInfo( -1, "level" )
				//~ $a = $level * $level
				//~ $add_exp = $a * 14
				//~ AddPlayerInfo(-1 , "exp" , $add_exp)
			//~ endif
			//~ return
		//~ endif

		$revalue = SubPlayerInfo(-1 , "item" , 63171 , 1)

		if $revalue == 0
			$rewardID = $today_days + 2000
			SetPlayerActLog(-1,40,$rewardID)
			AddPlayerInfo(-1 , "item" , 63172 , 1)
			AddPlayerInfo(-1 , "item" , 59327 , 2)
			AddPlayerInfo(-1 , "item" , 59838 , 1)
			$ticket_number = $ticket_number + 1
			SetServerVar( 23, $ticket_number)
			$leavings_ticket = 40 - $ticket_number
			#player_name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#player_name," has been awarded a Pyramid Passport! ",$leavings_ticket," remain." )
			$level = GetPlayerInfo( -1, "level" )
			$a = $level * $level
			$add_exp = $a * 14
			AddPlayerInfo(-1 , "exp" , $add_exp)
		//?????????,????????????
		else
			$month = GetSystemTime("month")
			$mday = GetSystemTime("mday")
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$monthadd = $month * 100
			$dayadd = $monthadd + $mday
			$hour = $hour * 100
			$timeadd = $hour + $minute
			BC( "messagebox", "player", -1, "Failed! Please take a screenshot and send it to Customer Service. Time: ",$dayadd,") ",$timeadd,") " )
			$rewardID = $today_days + 3000
			SetPlayerActLog(-1,40,$rewardID)
		endif

	}

	//???,????????,?????
	function OnOption1(){

		$count = GetPlayerInfo( -1, "item", 63171)
		if $count == 0
			BC( "dialogbox", "player", -1, "You do not have Guild Proof,I can not give you the reward." )
			return
		endif

		//????,????
		$revalue = SubPlayerInfo(-1 , "item" , 63171 , 1)
		if $revalue == 0
			$level = GetPlayerInfo( -1, "level" )
			$a = $level * $level
			$add_exp = $a * 14
			AddPlayerInfo(-1 , "exp" , $add_exp)
		endif

	}

//??"????"??
	function OnOption2(){

		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$houradd = $hour * 100
		$time = $houradd + $minute

			AddStatus(-1,6576,1)
			BC("dialogbox","player",-1,"You received Sanctuary of Time! \nYou can join the Pyramid Approach Event Shadow of the Past or Legend of the Secret Room now. \n\nHint: Those who have entered the Pyramid can't join the Pyramid Approach Event any more. \nThose who have joined the Pyramid Approach Event can't enter the Pyramid any more.")


	}
