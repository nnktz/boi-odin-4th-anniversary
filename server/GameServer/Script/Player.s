//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2008/10/17
//		Author:??
//		TaskName:
//		TaskID:????
//
//****************************************
//**???????**
//?? SendActivityRecord ???????:
//??????:(????????????)
//?????????? SendActivityRecord( -1, 0 ) ???
//????????? SendActivityRecord( -1, 4 ) ???
//???????:(??????3???????,???????????)
//?????????? SendActivityRecord( -1, 1 ) ???
//????????? SendActivityRecord( -1, 4 ) ???
//?????????:(??????3???????,???????????)
//?????????? SendActivityRecord( -1, 2 ) ???
//????????? SendActivityRecord( -1, 4 ) ???
//**???????end**
//--------------------------------------------------------------
//--------------------?????------------------------------
//--------------------------------------------------------------
	function OnMapLoaded(){

		$map_id = GetPlayerInfo(-1,"mapid")
		if $map_id == 146
			BC("chat", "player", -1, "[color=ffff3817]Character data corrupted. Please contact Customer Service.")
			BC("screen", "player", -1, "Character data corrupted. Please contact Customer Service.")
		endif
		//??????5??????BUFF
		if $map_id == 83
			AddStatus(-1 , 10561, 1)
		endif
		//4072???????
			SetPlayerVar(-1,4072,0)

		//?????
		$inmap = 0
		$isspecial = 0

		//--???????
		if $map_id >= 26421
			if $map_id <= 26520
				$inmap = 1
				//-----------------------
				$havetask = IsTaskAccept(-1,1889)
				if $havetask == 0
					$item = GetPlayerInfo(-1,"item",12881)
					if $item == 0
						AddPlayerInfo(-1,"item",12881,1)
					endif
				endif
				//-----------------------
				RemoveStatusByID(-1,21628)
				RemoveStatusByID(-1,21629)
				AddStatus(-1,6476,1)
				$camp = GetPlayerVar(-1,351)
				$buffid = 21628 + $camp
				AddStatus(-1,$buffid,1)
				//-----------------------
			endif
		endif


//------????

		if $map_id != 582
			SubPlayerInfo(-1,"item",6689,-1)
			SubPlayerInfo(-1,"item",6690,-1)
		else
			$inmap = 1
			$isspecial = 1
		endif
//-----------------------

		if $inmap == 0
			RemoveStatusByID(-1,6476)
			RemoveStatusByID(-1,6477)
			RemoveStatusByID(-1,6478)
			RemoveStatusByID(-1,6479)
			RemoveStatusByID(-1,6480)
			RemoveStatusByID(-1,6571)
			RemoveStatusByID(-1,6572)
			RemoveStatusByID(-1,21628)
			RemoveStatusByID(-1,21629)
		endif
//--------------------????---------------------------------
//		call checkresult()
		call valentine()


//--------------------??buff??---------------------------------
		//--??????
		if $map_id >= 25801
			if $map_id <= 25920
				$isspecial = 1
			endif
		endif
		//--?????
		if $map_id >= 26421
			if $map_id <= 26520
				$isspecial = 1
			endif
		endif
		if $isspecial == 0
			//????buff
			AddStatus(-1,6362,2)
			AddStatus(-1,6372,2)
		endif

		//???????BUFF
			AddStatus(-1 , 11815, 2)
		//???????BUFF
			AddStatus( -1, 6073, 1 )
		//????????BUFF
			AddStatus( -1, 6349, 2 )
		//???????BUFF
			AddStatus(-1,2362,2)
			//????????
			RemoveStatusByID(-1,11962)
		//???,??????14801-14833??????,?????????BUFF
		if $map_id < 14801
			AddStatus( -1, 7881, 2 )
			AddStatus( -1, 7882, 2 )
			AddStatus( -1, 7883, 2 )
			AddStatus( -1, 7884, 2 )
		endif
		if $map_id > 14833
			AddStatus( -1, 7881, 2 )
			AddStatus( -1, 7882, 2 )
			AddStatus( -1, 7883, 2 )
			AddStatus( -1, 7884, 2 )
		endif
		//??????,??????15101-25100??????,?????BUFF
		if $map_id < 15101
			RemoveStatusByID(-1,21625)
			RemoveStatusByID(-1,21626)
			RemoveStatusByID(-1,21627)
		endif
		if $map_id > 25100
			RemoveStatusByID(-1,21625)
			RemoveStatusByID(-1,21626)
			RemoveStatusByID(-1,21627)
		endif
		//??90???,??????24001-24100??????,?????BUFF
		if $map_id < 24001
			RemoveStatusByID(-1,6451)
			RemoveStatusByID(-1,6458)
			RemoveStatusByID(-1,6459)
			RemoveStatusByID(-1,6460)
			RemoveStatusByID(-1,6461)
		endif
		if $map_id > 24100
			RemoveStatusByID(-1,6451)
			RemoveStatusByID(-1,6458)
			RemoveStatusByID(-1,6459)
			RemoveStatusByID(-1,6460)
			RemoveStatusByID(-1,6461)
		endif

	}
//--------------------------------------------------------------
//--------------------?????---------------------------------
//--------------------------------------------------------------
	function EveryMinute(){

//		$mapid = GetPlayerInfo(-1,"mapid")
//		$playerid = GetPlayerID()
//		$posx = GetPlayerInfo(-1,"mapposx")
//		$posy = GetPlayerInfo(-1,"mapposy")
//		$year = GetSystemTime("year")
//		$month = GetSystemTime("month")
//		$mday = GetSystemTime("mday")
//		$hour = GetSystemTime("hour")
//		$minute = GetSystemTime("minute")
//		$week = GetSystemTime("week")
//		$yday = GetSystemTime("yday")
//		$yweek = GetNowWeek()
//		$second = GetSystemTime("second")
//		$level = GetPlayerInfo(-1,"level")
//		$FLDlevel = GetFieldLevel($playerid)
//		$ExpPT = GetPlayerInfo($playerid,"exp")
//		$fExpPT = GetFieldLevel($playerid)
//		$guildid = GetPlayerInfo($playerid,"guildid")
//		$ectype_id = $mapid
		call checkresult()
		call guaguale()


		 //????????
		 //??????
		 $vip = IsDiamondVIP(-1)
		 if $vip == 0
			 $mytime = GetPlayerVar(-1 , 3993)
			 $Now_Yday =  GetSystemTime( "yday" )
			 if $mytime != $Now_Yday
				 SetPlayerVar( -1 , 3993 , $Now_Yday )
				 SendMail(-1,"Platinum Noble Daily Gift","Distinguished Platinum Noble, we prepared some daily gifts for you. Thanks for your support to BOI!",0,44715)
			 endif
		 endif

	//	 //?????????
	//	 	$mapid = GetPlayerInfo(-1,"mapid")
	//		$playerid = GetPlayerID()
	//		$year = GetSystemTime("year")
	//		$month = GetSystemTime("month")
	//		$mday = GetSystemTime("mday")
	//		$hour = GetSystemTime("hour")
	//		$minute = GetSystemTime("minute")
	//		$hour = $hour * 100
	//		$time = $hour + $minute
	//		$Line = GetServerLineID
	//		if $Line == 7
	//			if $year == 2013
	//				if $month == 3
	//					if $mday >= 12
	//						if $mday <= 25
	//							if $mapid == 6
	//								if $time > 2035
	//									if $time < 2045
	//										AddPlayerInfo(-1,"item",44703,1)
	//									endif
	//								endif
	//							endif
	//						endif
	//					endif
	//				endif
	//			endif
	//		endif
	//

	}
//--------------------------------------------------------------
//--------------------????---------------------------------
//--------------------------------------------------------------
	function OnLogin(){
//		BC("messagebox","player",-1,"(>_<)!")
		//?????? ????????
		$level = GetPlayerInfo(-1 , "level")
		if $level < 3
			SetPlayerVar(-1 , 28 , 1)
		endif
		//3.82????????bug
		$wenzhangbug = GetPlayerVar(-1, 311)
		if $wenzhangbug == 0
			RemoveStatusByID(-1,12026)
			RemoveStatusByID(-1,12027)
			RemoveStatusByID(-1,12028)
			RemoveStatusByID(-1,12029)
			RemoveStatusByID(-1,12030)
			RemoveStatusByID(-1,12031)
			RemoveStatusByID(-1,12032)
			RemoveStatusByID(-1,12033)
			RemoveStatusByID(-1,12034)
			SetPlayerVar(-1, 311, 1)
		endif
		BC("chat", "player", -1, "[color=ffff3817]Welcome to Battle of the Immortals!")
		$Now_Week =  GetSystemTime( "week" )
		$Now_Yday =  GetSystemTime( "yday" )
    $double_days = GetPlayerVar(-1 , 3626)
    $double_weeks = GetPlayerVar(-1 , 3216)
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Year =  GetSystemTime( "year" )
		$level = GetPlayerInfo(-1,"level")
		$levelf = GetFieldLevel(-1)


		//???????
		$isreset = GetPlayerVar(-1,370)
		if $isreset == 0
//????????,????18?
			$indexW = 371
			while $indexW < 388
				SetPlayerVar(-1,$indexW,0)
				$indexW += 1
			endwhile
//2012?????
			SetPlayerVar(-1,4100,0)
//2012????
			SetPlayerVar(-1,4101,0)
//??????????
			SetPlayerVar(-1,3436,0)
//2012????Q
			SetPlayerVar(-1,4076,0)
//2012????B
			SetPlayerVar(-1,4077,0)
//2012????Z
			SetPlayerVar(-1,4079,0)
//2012????X
			SetPlayerVar(-1,4080,0)
//????????mday
			SetPlayerVar(-1,3445,0)
//??????????
			SetPlayerVar(-1,3436,0)
//????
			SetPlayerVar(-1,370,1)
		endif

//--------------------------------????------------------------------------start
//		if $Now_Year == 2012
//			$monthadd = $Now_Month * 100
//			$dayadd = $monthadd + $Now_Mday
//			if $dayadd >= 1211
//				if $dayadd <= 1231
//					$leave_days = GetOffLineDays(-1)
//					$isget = GetPlayerVar(-1,296)
//					if $isget == 0
//						if $level >= 90
//							if $leave_days >= 30
//								if $leave_days < 60
//									SendMail(-1,"Returning Veteran Silver EXP Pack","Welcome back to Battle of the Immortals! Here's a welcoming gift for you to help you recover any EXP you missed out on.",0,44589)
//									SendMail(-1,"Returning Veteran Silver Letter","Welcome back to Battle of the Immortals! Please accept this welcome letter. Bring enough Welcoming Keys to the goddess of fate to exchange for valuable gifts!",0,44595)
//									SetPlayerVar(-1,296,1)
//								endif
//							endif
//							if $leave_days >= 60
//								if $leave_days < 120
//									SendMail(-1,"Returning Veteran Gold EXP Pack","Welcome back to Battle of the Immortals! Here's a welcoming gift for you to help you recover any EXP you missed out on.",0,44590)
//									SendMail(-1,"Returning Veteran Gold Letter","Welcome back to Battle of the Immortals! Please accept this welcome letter. Bring enough Welcoming Keys to the goddess of fate to exchange for valuable gifts!",0,44596)
//									SetPlayerVar(-1,296,1)
//								endif
//							endif
//							if $leave_days >= 120
//								if $leave_days < 1366
//									SendMail(-1,"Returning Veteran Diamond EXP Pack","Welcome back to Battle of the Immortals! Here's a welcoming gift for you to help you recover any EXP you missed out on.",0,44591)
//									SendMail(-1,"Returning Veteran Diamond Letter","Welcome back to Battle of the Immortals! Please accept this welcome letter. Bring enough Welcoming Keys to the goddess of fate to exchange for valuable gifts!",0,44597)
//									SetPlayerVar(-1,296,1)
//								endif
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//--------------------------------????------------------------------------end
////---------------------------------???????---------------------------------start *!
		if $Now_Year == 2013
			if $Now_Yday >= 204
				if $Now_Yday <= 222
					if $level >= 45
						$issentmail = GetPlayerVar(-1,3305)
						if $issentmail < 70
						//???????????0,3871?? 3873?? 76????--start
							SetPlayerVar(-1,3871,0)
							SetPlayerVar(-1,3873,0)
							SetPlayerVar(-1,76,0)
							SetPlayerVar(-1,207,0)
						//?0--end
							SetPlayerVar(-1,3305,70)
							SendMail(-1,"Summer Camp Egg","Summer Camp is coming. Here's a gift for you from the Lucky Egg. Have a great summer.",0,63756)
						endif
					endif
				endif
			endif
		endif
////--------------------------------???????------------------------------------end
		//??????----
		if $Now_Year == 2013
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday
			if $dayadd >= 0
				if $dayadd <= 415
					if $level >= 90
						$issentmail = GetPlayerVar(-1,3305)
						if $issentmail < 65
							SetPlayerVar(-1,3305,65)
							SendMail(-1,"BOI 4th Anniversary","{#fff0f010=It's still you and me. #}\n4 years have passed, and we have passed through the vicissitude of BOI. As we grow in general, we improve, approve, and praise in a step by step process towards maturity. It's our friendship that got us here. I respect you and honor your friendship! We will continue on together! \n{#ff0fff0f=Coming soon------April 16th BOI 4th Anniversary edition.#}",0,59839)
						endif
					endif
				endif
			endif
		endif
		//4?16???????
			if $Now_Year == 2013
				if $Now_Month == 4
					if $Now_Mday >= 9
						if $Now_Mday <= 30
							if $level >= 60
								$issentmail = GetPlayerVar(-1,363)
								if $issentmail == 0
									SetPlayerVar(-1,363,1)
									SendMail(-1,"Anniversary Celebration","BOI 4th Anniversary, thanks for your joining.",0,44756)
								endif
							endif
						endif
					endif
				endif
			endif
		//4?19?-4?30???????????
			if $Now_Year == 2013
				if $Now_Month == 4
					if $Now_Mday >= 19
						if $Now_Mday <= 30
							if $level >= 30
								$issentmail = GetPlayerVar(-1,397)
								if $issentmail == 0
									SetPlayerVar(-1,397,1)
									SendMail(-1,"Temporary Maintainance Letter of Apology","Due to an error that occured with our pet reincarnation data, we performed temporary maintenance on April 17th. We're truly sorry for any inconvenience this may have caused! We've prepared a small gift for you to express our apologies. Thank you for playing BOI! \n{#ff0fff0f=Pet reincarnation data is closed.#}",0,44867)
								endif
							endif
						endif
					endif
				endif
			endif

			if $Now_Year == 2013
				if $Now_Month == 5
					if $Now_Mday == 14
							if $level >= 110
								$issentmail = GetPlayerVar(-1,399)
								if $issentmail == 0
									SetPlayerVar(-1,399,1)
									SendMail(-1,"Temporary Maintainance Letter of Apology","Due to an error that occured with our server, we performed temporary maintenance today. We're truly sorry for any inconvenience this may have caused! We've prepared a small gift for you to express our apologies. Thank you for playing BOI!",0,59840)
								endif
							endif
						endif
					endif
				endif
			endif


			//---------------------------------??????????---------------------------------start


		if $Now_Year == 2013
			if $Now_Month == 6
				if $Now_Mday > 22
					if $Now_Mday < 29
						$issentmail = GetPlayerVar(-1,410)
						if $issentmail < 1
						$paiming1 = GetPlayerInfo(-1, "battleranklist")
							//???
							if $paiming1 == 0
								SetPlayerVar(-1,410,1)
								SendMail(-1,"Champion's Arena Season 2 Rank Reward","Congrats!",0,44906)
							endif
							//2-5?
							if $paiming1 >= 1
								if $paiming1 <= 4
									SetPlayerVar(-1,410,1)
									SendMail(-1,"Champion's Arena Season 2 Rank Reward","Congrats!",0,44907)
								endif
							endif
							//6-20?
							if $paiming1 >= 5
								if $paiming1 <= 19
									SetPlayerVar(-1,410,1)
									SendMail(-1,"Champion's Arena Season 2 Rank Reward","Congrats!",0,44908)
								endif
							endif
							//21-100?
							if $paiming1 >= 20
								if $paiming1 <= 99
									SetPlayerVar(-1,410,1)
									SendMail(-1,"Champion's Arena Season 2 Rank Reward","Congrats!",0,44909)
								endif
							endif
						endif
					endif
				endif
			endif
		endif

		//----------------------------???????-----------------------------
		//----------------------------???????-----------------------------
		//----------------------------???????-----------------------------
		//----------------------------???????-----------------------------
   	//??????????,?????????1?1?????,?????,???????
    $level = GetPlayerInfo(-1 , "level")
    //?????????,??????????????? 2010?3?25?
    $vip_level = GetPlayerInfo(-1 , "noblelevel")
    $double_exp_time = 18000
    if $vip_level == 0
    	$double_exp_time = 18000
    endif
    if $vip_level == 1
    	$double_exp_time = 18000
    endif
    if $vip_level == 2
    	$double_exp_time = 18000
    endif
    if $vip_level == 3
    	$double_exp_time = 21600
    endif
    if $vip_level == 4
    	$double_exp_time = 25200
    endif
    if $vip_level == 5
    	$double_exp_time = 28800
    endif
    if $vip_level == 6
    	$double_exp_time = 32400
    endif
    if $vip_level == 7
    	$double_exp_time = 36000
    endif
    if $vip_level == 8
    	$double_exp_time = 36000
    endif
    if $vip_level == 9
    	$double_exp_time = 36000
    endif
    if $vip_level == 10
    	$double_exp_time = 36000
    endif
    if $vip_level == 11
    	$double_exp_time = 36000
    endif
		//10?????
		if $level >= 10
			if $double_days == 0
				if $double_weeks == 0
					SetExpAddons(-1 , $double_exp_time , 1)
					SetPlayerVar(-1 , 3626 , $Now_Yday)
					SetPlayerVar(-1 , 3216 , $Now_Week)
				endif
			endif
		  //???????
			//?????????????????,?????????
			if $Now_Week < $double_weeks
				SetExpAddons(-1 , $double_exp_time , 1)
				SetPlayerVar(-1 , 3626 , $Now_Yday)
				SetPlayerVar(-1 , 3216 , $Now_Week)
			//?????????????????????,?????????????7?,???????
			else
				//?????????????????,????????,??????
				if $Now_Yday >= $double_days
					$decrease_days = $Now_Yday - $double_days
					if $decrease_days >= 7
						SetExpAddons(-1 , $double_exp_time , 1)
						SetPlayerVar(-1 , 3626 , $Now_Yday)
						SetPlayerVar(-1 , 3216 , $Now_Week)
					endif
				//???????...
				else
					//?????0???,??365?????????,???????????,????12??1???????????????
					$temp_value = $Now_Yday + 365
		      $decrease_days = $temp_value - $double_days
					if $decrease_days >= 7
						SetExpAddons(-1 , $double_exp_time , 1)
						SetPlayerVar(-1 , 3626 , $Now_Yday)
						SetPlayerVar(-1 , 3216 , $Now_Week)
					endif
				endif
			endif
		endif
	//----------------------------???????----------------------------

	//???????????----------------------------
		$Battle_line = GetServerLineID()
		$Battle_season = GetBattleTeamLeagueSection
		if $Battle_season == 4
			if $Battle_line >= 106
				BC( "dialogbox", "player", -1, "Time Periods:\nFirst Round: 14:00-14:10\nSecond Round 15:00-15:10\nThird Round: 16:00-16:10\nSemifinals: 17:00-17:10\nFinals: 20:00-20:10" )
			endif
		endif

		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Time = GetSystemTime( "yday" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$level = GetPlayerInfo( -1, "level" )

	 	$UseTime = GetPlayerVar(-1 , 3956 )
		$UseHour = GetPlayerVar(-1 , 3963 )


		if $UseTime != $Time
			if $Now_Hour >= 2
				CancelTask( -1 , 2533 )
				CancelTask( -1 , 2534 )
				CancelTask( -1 , 2535 )
				CancelTask( -1 , 2536 )
				CancelTask( -1 , 2537 )
			endif
		endif
	//???????????end----------------------------
	//??????????????----------------------------
	$teamid = GetBattleTeam( -1 , 2 )
	$battle_section = GetBattleTeamLeagueSection
	$team_rank = GetBattleTeamRank($teamid)
	$mail_week = GetPlayerVar( -1 , 3278 )
	$mail_day = GetPlayerVar( -1 , 3990 )
	$battle_line = GetServerLineID()
		if $battle_section == 3
			if $battle_line < 50
				if $Now_Week != 6
					if $team_rank >= 0
						if $team_rank <= 95
							if $mail_week == 0
								if $mail_week == 0
		 							SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
									SetPlayerVar(-1 , 3278 , $Now_Week)
									SetPlayerVar(-1 , 3990 , $Now_Yday)
								endif
							endif
						  //???????
							//??????????????,?????????
							if $Now_Week < $mail_week
								SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
								SetPlayerVar(-1 , 3278 , $Now_Week)
								SetPlayerVar(-1 , 3990 , $Now_Yday)
							//???????????????????,?????????????7?,???????
							else
								//??????????????????,????????,??????
								if $Now_Yday >= $mail_day
									$decrease_days = $Now_Yday - $mail_day
									if $send_days > 7
										SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
										SetPlayerVar(-1 , 3278 , $Now_Week)
										SetPlayerVar(-1 , 3990 , $Now_Yday)
									endif
								//???????...
								else
									$send_value = $Now_Yday + 365
						      $decrease_days = $send_value - $double_days
									if $decrease_days > 7
										SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
										SetPlayerVar(-1 , 3278 , $Now_Week)
										SetPlayerVar(-1 , 3990 , $Now_Yday)
									endif
								endif
							endif
						endif
					endif
				endif
			endif
		endif
		//??????????????end----------------------------


		//---------------------------------????------------------------------
    $level = GetPlayerInfo( -1, "level" )
		if $level >= 30
			$count = GetPackMaxCount( -1, 0 )
			if $count < 30
				//????
				$newcount = 30
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 1 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 60
			$count = GetPackMaxCount( -1, 0 )
			if $count < 35
				//????
				$newcount = 35
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 2 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 75
			$count = GetPackMaxCount( -1, 0 )
			if $count < 40
				//????
				$newcount = 40
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 3 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 90
			$count = GetPackMaxCount( -1, 0 )
			if $count < 45
				//????
				$newcount = 45
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 4 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 100
			$count = GetPackMaxCount( -1, 0 )
			if $count < 50
				//????
				$newcount = 50
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 5 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 105
			$count = GetPackMaxCount( -1, 0 )
			if $count < 55
				//????
				$newcount = 55
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 6 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 110
			$count = GetPackMaxCount( -1, 0 )
			if $count < 60
				//????
				$newcount = 60
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 7 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 115
			$count = GetPackMaxCount( -1, 0 )
			if $count < 65
				//????
				$newcount = 65
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 8 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 120
			$count = GetPackMaxCount( -1, 0 )
			if $count < 70
				//????
				$newcount = 70
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 9 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		//---------------------------------????------------------------------end

		//?????,?????????,?????4???5?????????
		//SendActivityRecord ???-????????
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$Time = GetSystemTime( "yday" )
		$level = GetPlayerInfo( -1, "level" )
	//???
		$last_time = GetPlayerVar( -1, 3605 )
		if $last_time == $Time
			InsertPlayerVar( -1, 1, 1 )
		else
			InsertPlayerVar( -1, 1, 0 )
		endif
	//?????
		$Var2 = GetPlayerVar( -1, 3763 )
		if $Var2 == $Time
			InsertPlayerVar( -1, 3, 1 )
		else
			InsertPlayerVar( -1, 3, 0 )
		endif
	//???????
//		$Varenci = GetPlayerVar( -1, 4027 )
//		if $Varenci == $Time
//			InsertPlayerVar( -1, 117, 1 )
//		else
//			InsertPlayerVar( -1, 117, 0 )
//		endif
	//?????
		$Varenci = GetPlayerVar( -1, 3536 )
		if $Varenci == $Time
			InsertPlayerVar( -1, 118, 1 )
		else
			InsertPlayerVar( -1, 118, 0 )
		endif
	//????
		$Varenci = GetPlayerVar( -1, 3539 )
		if $Varenci == $Time
			InsertPlayerVar( -1, 119, 1 )
		else
			InsertPlayerVar( -1, 119, 0 )
		endif
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar( -1, 3769 )
			if $days == $today_time
				InsertPlayerVar( -1, 81, 1 )
			else
				InsertPlayerVar( -1, 81, 0 )
			endif




	//?????
		$player_time = GetPlayerVar( -1, 3935 )
		$player_round = GetPlayerVar( -1, 3253 )
		if $player_time == $Time
			InsertPlayerVar( -1, 87, 1 )
		else
			InsertPlayerVar( -1, 87, 0 )
		endif
	//?????
		$Var = GetPlayerVar( -1, 3956 )
		if $Var == $Time
			InsertPlayerVar( -1, 93, 1 )
		else
			InsertPlayerVar( -1, 93, 0 )
		endif


			$today_week = GetNowWeek()
		$luoxuan = GetPlayerVar( -1, 3576 )
		if $today_week == $luoxuan
			InsertPlayerVar( -1, 126, 1 )
		else
			InsertPlayerVar( -1, 126, 0 )
		endif







	//????
		if $Now_Hour >= 19
			if $Now_Hour <= 21
				$player_time = GetPlayerVar( -1, 3627 )
				if $player_time == $Time
					InsertPlayerVar( -1, 26, 1 )
				else
					InsertPlayerVar( -1, 26, 0 )
				endif
			endif
		endif
		$today_week = GetNowWeek()
		$luoxuan = GetPlayerVar( -1, 3576 )
		if $today_week == $luoxuan
			InsertPlayerVar( -1, 126, 1 )
		else
			InsertPlayerVar( -1, 126, 0 )
		endif



	//?????
//		InsertPlayerVar( -1, 28, 0 )
	//????????
//		if $Now_Hour >= 18
//			if $Now_Hour <= 20
//				InsertPlayerVar( -1, 43, 0 )
//			endif
//		endif
	//?????
//		if $Now_Hour >= 19
//			if $Now_Hour <= 21
//				$Task_Time = GetPlayerVar( -1, 3643 )
//				if $Task_Time == $Time
//					InsertPlayerVar( -1, 44, 1 )
//				else
//					InsertPlayerVar( -1, 44, 0 )
//				endif
//			endif
//		endif
	//???????
		$dati = GetPlayerVar( -1, 3710 )
		if $dati == $Time
			InsertPlayerVar( -1, 45, 1 )
		else
			InsertPlayerVar( -1, 45, 0 )
		endif
	//????
//		$shu =  GetPlayerVar( -1, 3715 )
//		if $shu == $Time
//			InsertPlayerVar( -1, 46, 1 )
//		else
//			InsertPlayerVar( -1, 46, 0 )
//		endif
	//???????
//		$quest_time = GetPlayerVar( -1, 3606 )
//		if $quest_time == $Time
//			$mofa = GetPlayerVar( -1 , 3203 )
//			$mofa = $mofa - 1
//			InsertPlayerVar( -1, 47, $mofa )
//		else
//			InsertPlayerVar( -1, 47, 0 )
//		endif
	//??????
//		$quest_time =  GetPlayerVar( -1	, 3609 )
//		$number = GetPlayerVar( -1 , 3204 )
//		if $quest_time == $Time
//			InsertPlayerVar( -1, 49, $number )
//		else
//			InsertPlayerVar( -1, 49, 0 )
//		endif
	//??????
		$player1_time = GetPlayerVar( -1, 3923 )
		if $Now_Hour >= 12
			if $Now_Hour <= 13
				if $player1_time == $Time
					InsertPlayerVar( -1, 50, 1 )
				else
					InsertPlayerVar( -1, 50, 0 )
				endif
			endif
		endif
		if $Now_Hour >= 20
			if $Now_Hour <= 21
				if $player1_time == $Time
					InsertPlayerVar( -1, 52, 1 )
				else
					InsertPlayerVar( -1, 52, 0 )
				endif
			endif
		endif
	//????
//		InsertPlayerVar( -1, 55, 0 )
	//?????
//		InsertPlayerVar( -1, 56, 0 )
	//?????
		$use_number = GetPlayerVar( -1, 3644 )
		$use_time = GetPlayerVar( -1, 3645 )
		if $use_time == $Time
			InsertPlayerVar( -1, 61, $use_number )
		else
			InsertPlayerVar( -1, 61, 0 )
		endif
	//?????
		if $level < 60
			$player2_time =  GetPlayerVar( -1, 3761 )
			$player2_number =  GetPlayerVar( -1, 3401 )
			if $player2_time == $Time
				InsertPlayerVar( -1, 65, $player2_number )
			else
				InsertPlayerVar( -1, 65, 0 )
			endif
		endif
	//?????
		if $level < 75
			$player_time =  GetPlayerVar( -1, 3760 )
			$player_number =  GetPlayerVar( -1, 3400 )
			if $player_time == $Time
				InsertPlayerVar( -1, 63, $player_number )
			else
				InsertPlayerVar( -1, 63, 0 )
			endif
		endif
	//???????
		if $level < 90
			$player3_time =  GetPlayerVar( -1, 3764 )
			$player3_number =  GetPlayerVar( -1, 3404 )
			if $player3_time == $Time
				InsertPlayerVar( -1, 66, $player3_number )
			else
				InsertPlayerVar( -1, 66, 0 )
			endif
		endif
	//??????
		if $level < 100
			$player1_time =  GetPlayerVar( -1, 3762 )
			$player1_number =  GetPlayerVar( -1, 3402 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 64, $player1_number )
			else
				InsertPlayerVar( -1, 64, 0 )
			endif
		endif
	//??????
		$levelf = GetFieldLevel(-1)
		if $levelf < 10
			$Player_titan = GetPlayerVar( -1, 4099 )
			if $Player_titan == $Time
				InsertPlayerVar( -1, 101, 1 )
			else
				InsertPlayerVar( -1, 101, 0 )
			endif
		endif
	//?????
		if $Now_Hour >= 12
			if $Now_Hour <= 13
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 70, $player4_number )
				else
					InsertPlayerVar( -1, 70, 0 )
				endif
			endif
		endif
		if $Now_Hour >= 20
			if $Now_Hour <= 21
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 72, $player4_number )
				else
					InsertPlayerVar( -1, 72, 0 )
				endif
			endif
		endif
	//????
//		$day = GetPlayerVar( -1, 3759 )
//		$count = GetPlayerVar( -1, 3228 )
//		if $day == $Time
//			InsertPlayerVar( -1, 74, $count )
//		else
//			InsertPlayerVar( -1, 74, 0 )
//		endif
	//????????
		$player1_time =  GetPlayerVar( -1, 3756 )
		$player1_number =  GetPlayerVar( -1, 3398 )
		if $player1_time == $Time
			InsertPlayerVar( -1, 76, $player1_number )
		else
			InsertPlayerVar( -1, 76, 0 )
		endif
	//????
		$RankList = GetRankListValue( 1, 499 )
		$level = GetPlayerInfo( -1, "level" )
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $RankList >= 75
			if $RankList <= 89
				if $level <= 60
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 90
			if $RankList <= 99
				if $level <= 75
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 100
			if $RankList <= 109
				if $level <= 90
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 110
			if $RankList <= 119
				if $level <= 100
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 120
			if $RankList <= 130
				if $level <= 110
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
	//???
//		$today_time = GetSystemTime( "yday" )
//		$player1_time =  GetPlayerVar( -1, 3770 )
//		if $player1_time == $today_time
//			InsertPlayerVar( -1, 79, 1 )
//		else
//			InsertPlayerVar( -1, 79, 0 )
//		endif
	//???
//		InsertPlayerVar( -1, 80, 0 )
	//??????
		$xpxt1 = GetPlayerVar( -1, 3996 )
		$Now_Yday =  GetSystemTime( "yday" )
		$result = IsTaskDone( -1, 1735 )
		$xpds = GetPlayerVar( -1, 3321 )
		if $xpds < 24
			if $result == 0
				if $xpxt1 == $Now_Yday
						InsertPlayerVar( -1, 102, 1 )
				else
						InsertPlayerVar( -1, 102, 0 )
				endif
			endif
		endif
	//?????
    $xpxt2 = GetPlayerVar( -1, 3995 )
    if $xpds >= 24
    	if $xpxt2 == $Now_Yday
    		 InsertPlayerVar( -1, 103, 1 )
    	else
    	   InsertPlayerVar( -1, 103, 0 )
    	endif
    endif
	//???
//		InsertPlayerVar( -1, 105, 0 )
	//???
//		InsertPlayerVar( -1, 107, 0 )
	//?????
//		$player_time = GetPlayerVar( -1, 4011 )
//		if $player_time == $Now_Yday
//			InsertPlayerVar( -1, 108, 1 )
//		else
//			InsertPlayerVar( -1, 108, 0 )
//		endif
	//????
		$levelf = GetFieldLevel(-1)
		if $levelf < 30
			$player_time = GetPlayerVar( -1, 4013 )
			if $player_time == $Now_Yday
				InsertPlayerVar( -1, 109, 1 )
			else
				InsertPlayerVar( -1, 109, 0 )
			endif
		endif
	//-----??????-----
		$Time = GetSystemTime( "yday" )
		$Playervarsg = GetPlayerVar( -1, 3943 )
		if $Playervarsg == $Time
			InsertPlayerVar( -1, 91, 1 )
		else
			InsertPlayerVar( -1, 91, 0 )
		endif
	//3?????
		$year = GetSystemTime( "year" )
		$month = GetSystemTime( "month" )
		$day = GetSystemTime( "mday" )
//		if $year == 2012
//			$monthadd = $month * 100
//			$dayadd = $monthadd + $day
//			if $dayadd < 529
				$player_time = GetPlayerVar( -1, 4047 )
				if $player_time == $Now_Yday
					InsertPlayerVar( -1, 112, 1 )
				else
					InsertPlayerVar( -1, 112, 0 )
				endif
//			endif
//		endif

//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3561 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 122, 1 )
		else
			InsertPlayerVar( -1, 122, 0 )
		endif
//	ePurpose_Login = 1//?????????
		SendActivityRecord( -1, 1 )
	//???????
			if $Now_Hour >= 19
				if $Now_Hour <= 21
					$jinzita = GetPlayerVar( -1, 3615 )
					if $jinzita == $Time
						InsertPlayerVar( -1, 8, 1 )
					else
						InsertPlayerVar( -1, 8, 0 )
					endif
				endif
			endif
	//???
			if $Now_Hour >= 18
				if $Now_Hour <= 20
					$days = GetPlayerVar( -1, 3617 )
					if $days == $Time
						InsertPlayerVar( -1, 9, 1 )
					else
						InsertPlayerVar( -1, 9, 0 )
					endif
				endif
			endif
	//?????
			$chongbai = GetPlayerVar( -1, 3667 )
			if $chongbai == $Time
				InsertPlayerVar( -1, 27, 1 )
			else
				InsertPlayerVar( -1, 27, 0 )
			endif
	//?????
		$Task_Time = GetPlayerVar( -1, 3334 )
		$sysweek = GetNowWeek()
		if $Task_Time == $Time
			InsertPlayerVar( -1, 62, 1 )
		else
			InsertPlayerVar( -1, 62, 0 )
		endif
	//????
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $Now_Mday > 7
			if $Now_Mday <= 14
				if $Now_Week == 0
					if $Now_Hour >= 13
						if $Now_Hour <= 15
							if $TaskVar == $Time
								InsertPlayerVar( -1, 75, 1 )
							else
								InsertPlayerVar( -1, 75, 0 )
							endif
						endif
					endif
				endif
			endif
		endif
	//????

//????
		InsertPlayerVar( -1, 100, 0 )
//???
		InsertPlayerVar( -1, 104, 0 )

		SendActivityRecord( -1, 4 )


		//??????
		if $level >= 20
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 0
				BC( "screen", "player", -1, "Fate Card system activated!" )
				AddTarotSlot(-1,2)
				AddTarotCostMax(-1,10)
				AddTarotCard(-1,103)
				AddTarotCard(-1,104)
				AddTarotCard(-1,108)
				AddTarotCard(-1,110)
				AddTarotCard(-1,113)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
			$VarCardplus = GetPlayerVar( -1, 250 )
			if $VarCardplus == 0
				AddTarotCostMax(-1,10)
				SetPlayerVar( -1, 250, 1 )
			endif
		endif
		if $level >= 85
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 1
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		if $level >= 110
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 2
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		if $levelf >= 25
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 3
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif

		//??????????
		$today_time = GetSystemTime( "yday" )
		$shuishen_time = GetPlayerVar( -1, 4031 )
		$SThour = GetSystemTime( "hour" )
		if $shuishen_time != $today_time
			AddStatus( -1, 21601, 4 )
			AddStatus( -1, 21604, 4 )
			AddStatus( -1, 21605, 4 )
			CancelTask ( -1 , 2621 )
			CancelTask ( -1 , 2622 )
			CancelTask ( -1 , 2623 )
			CancelTask ( -1 , 2624 )
			CancelTask ( -1 , 2629 )
			SubPlayerInfo( -1 , "item", 54090 , 1 )
			SubPlayerInfo( -1 , "item", 54091 , 1 )
			SubPlayerInfo( -1 , "item", 54092 , 1 )
			SubPlayerInfo( -1 , "item", 54093 , 1 )
			SubPlayerInfo( -1 , "item", 54094 , 1 )
			SubPlayerInfo( -1 , "item", 54109 , 1 )
		endif
		if $shuishen_time == $today_time
			if $SThour >= 23
				AddStatus( -1, 21601, 4 )
				AddStatus( -1, 21604, 4 )
				AddStatus( -1, 21605, 4 )
				CancelTask ( -1 , 2621 )
				CancelTask ( -1 , 2622 )
				CancelTask ( -1 , 2623 )
				CancelTask ( -1 , 2624 )
				CancelTask ( -1 , 2629 )
				SubPlayerInfo( -1 , "item", 54090 , 1 )
				SubPlayerInfo( -1 , "item", 54091 , 1 )
				SubPlayerInfo( -1 , "item", 54092 , 1 )
				SubPlayerInfo( -1 , "item", 54093 , 1 )
				SubPlayerInfo( -1 , "item", 54094 , 1 )
				SubPlayerInfo( -1 , "item", 54109 , 1 )
			endif
		endif
		$taitan_time = GetPlayerVar( -1, 4034 )
		if $taitan_time != $today_time
			AddStatus( -1, 21603, 4 )
			AddStatus( -1, 21604, 4 )
			AddStatus( -1, 21605, 4 )
			CancelTask ( -1 , 2625 )
			CancelTask ( -1 , 2626 )
			CancelTask ( -1 , 2627 )
			CancelTask ( -1 , 2628 )
			SubPlayerInfo( -1 , "item", 54096 , 1 )
		endif
		if $taitan_time == $today_time
			if $SThour >= 23
				AddStatus( -1, 21603, 4 )
				AddStatus( -1, 21604, 4 )
				AddStatus( -1, 21605, 4 )
				CancelTask ( -1 , 2625 )
				CancelTask ( -1 , 2626 )
				CancelTask ( -1 , 2627 )
				CancelTask ( -1 , 2628 )
				SubPlayerInfo( -1 , "item", 54096 , 1 )
			endif
		endif

	}
//--------------------------------------------------------------
//--------------------????????-------------------------
//--------------------------------------------------------------
	function OnAppraisalTreasure(){

		$lasttime = GetPlayerVar( -1 , 3696 )
		$a = GetPlayerVar( -1 , 3697 )
		$time = GetSystemTime( "yday" )
		$exp = GetPlayerInfo( -1 , "treasureawardexp" )
		$a = $a + 1
		if $time == $lasttime
			if $a <= 8
				BC( "screen", "player", -1 , "You have done " , $a , " attempts of treasure identification for today. EXP given: " , $exp )
				AddPlayerInfo ( -1 , "exp" , $exp )
				SetPlayerVar( -1 , 3697 , $a )
			else
				BC( "screen", "player", -1, "You have performed more than 8 treasure identifications today. No more EXP will be acquired." )
			endif
		else
			BC( "screen", "player", -1, "This is your 1st attempt at treasure identification. EXP given: ",$exp )
			AddPlayerInfo ( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3697 , 1 )
			SetPlayerVar( -1 , 3696 , $time )
		endif

	}
	function OnFrozenFortVote(){
		//----??????????----------??---????????? 0 1 --------
		$yday =  GetSystemTime( "yday" )
		$next_day = GetPlayerVar( -1 , 3711 )
		$lv = GetPlayerInfo( -1 , "level" )
		$a = 50 * $lv
		$b = $lv / 15
		$c = $b * 2
		$d = $c + 6
		$e = $a * $d
		$f = $e * $lv
		$g = $lv / 10
		$h = $g + 7
		$i = $h * $f
		$exp = $i / 200
		//----??????????--------??---????????? 0 1 --------
		if $next_day == 0
			CanFrozenFortVote( 1 )
			AddPlayerInfo( -1 , "exp" , $exp )
			BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
			SetPlayerVar( -1, 3711 , $yday)
			return
		endif
		if $yday >= $next_day
			$dis_days = $yday - $next_day
			if $dis_days >= 6
				CanFrozenFortVote( 1 )
				AddPlayerInfo( -1 , "exp" , $exp )
				BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
				SetPlayerVar( -1 , 3711 , $yday )
			endif
		else
			$temp_value = $yday + 365
			$dis_days = $temp_value - $next_day
			if $dis_days >= 6
				CanFrozenFortVote( 1 )
				AddPlayerInfo( -1 , "exp" , $exp )
				BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
				SetPlayerVar( -1  , 3711 , $yday )
			endif
		endif
	}
//--------------------------------------------------------------
//--------------------??????-----------------------------
//--------------------------------------------------------------
	function OnNormalReqActivity(){

		//SendActivityRecord ???-?????????

		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Time = GetSystemTime( "yday" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$level = GetPlayerInfo( -1, "level" )
	//???
		if $level < 100
			$last_time = GetPlayerVar( -1, 3605 )
			if $last_time == $Time
				InsertPlayerVar( -1, 1, 1 )
			else
				InsertPlayerVar( -1, 1, 0 )
			endif
		endif
	//?????
		$Var2 = GetPlayerVar( -1, 3763 )
		if $Var2 == $Time
			InsertPlayerVar( -1, 3, 1 )
		else
			InsertPlayerVar( -1, 3, 0 )
		endif
	//???????
//		$Varenci = GetPlayerVar( -1, 4027 )
//		if $Varenci == $Time
//			InsertPlayerVar( -1, 117, 1 )
//		else
//			InsertPlayerVar( -1, 117, 0 )
//		endif
	//?????
		$Varenci = GetPlayerVar( -1, 3536 )
		if $Varenci == $Time
			InsertPlayerVar( -1, 118, 1 )
		else
			InsertPlayerVar( -1, 118, 0 )
		endif
	//????
		$Varenci = GetPlayerVar( -1, 3539 )
		if $Varenci == $Time
			InsertPlayerVar( -1, 119, 1 )
		else
			InsertPlayerVar( -1, 119, 0 )
		endif
	//?????
		if $level < 120
			$Var = GetPlayerVar( -1, 3956 )
			if $Var == $Time
				InsertPlayerVar( -1, 93, 1 )
			else
				InsertPlayerVar( -1, 93, 0 )
			endif
		endif

		$today_week = GetNowWeek()
		$luoxuan = GetPlayerVar( -1, 3576 )
		if $today_week == $luoxuan
			InsertPlayerVar( -1, 126, 1 )
		else
			InsertPlayerVar( -1, 126, 0 )
		endif



	//????
		$player_time = GetPlayerVar( -1, 3627 )
		if $player_time == $Time
			InsertPlayerVar( -1, 26, 1 )
		else
			InsertPlayerVar( -1, 26, 0 )
		endif
	//?????
		InsertPlayerVar( -1, 28, 0 )
	//????????
	//	InsertPlayerVar( -1, 43, 0 )
	//?????
		$Task_Time = GetPlayerVar( -1, 3643 )
		if $Task_Time == $Time
			InsertPlayerVar( -1, 44, 1 )
		else
			InsertPlayerVar( -1, 44, 0 )
		endif
	//???????
		if $level < 120
			$dati = GetPlayerVar( -1, 3710 )
			if $dati == $Time
				InsertPlayerVar( -1, 45, 1 )
			else
				InsertPlayerVar( -1, 45, 0 )
			endif
		endif
	//????
		if $level < 90
			$shu =  GetPlayerVar( -1, 3715 )
			if $shu == $Time
				InsertPlayerVar( -1, 46, 1 )
			else
				InsertPlayerVar( -1, 46, 0 )
			endif
		endif
	//???????
		if $level < 100
			$quest_time = GetPlayerVar( -1, 3606 )
			if $quest_time == $Time
				$mofa = GetPlayerVar( -1 , 3203 )
				$mofa = $mofa - 1
				InsertPlayerVar( -1, 47, $mofa )
			else
				InsertPlayerVar( -1, 47, 0 )
			endif
		endif
	//??????
		$player1_time = GetPlayerVar( -1, 3923 )
		if $player1_time == $Time
			InsertPlayerVar( -1, 50, 1 )
			InsertPlayerVar( -1, 52, 1 )
		else
			InsertPlayerVar( -1, 50, 0 )
			InsertPlayerVar( -1, 52, 0 )
		endif
	//????
		if $level < 120
			InsertPlayerVar( -1, 55, 0 )
		endif
	//?????
		InsertPlayerVar( -1, 56, 0 )
	//?????
		if $level < 120
			$use_number = GetPlayerVar( -1, 3644 )
			$use_time = GetPlayerVar( -1, 3645 )
			if $use_time == $Time
				InsertPlayerVar( -1, 61, $use_number )
			else
				InsertPlayerVar( -1, 61, 0 )
			endif
		endif
	//?????
		if $level < 60
			$player2_time =  GetPlayerVar( -1, 3761 )
			$player2_number =  GetPlayerVar( -1, 3401 )
			if $player2_time == $Time
				InsertPlayerVar( -1, 65, $player2_number )
			else
				InsertPlayerVar( -1, 65, 0 )
			endif
		endif
	//?????
		if $level < 75
			$player_time =  GetPlayerVar( -1, 3760 )
			$player_number =  GetPlayerVar( -1, 3400 )
			if $player_time == $Time
				InsertPlayerVar( -1, 63, $player_number )
			else
				InsertPlayerVar( -1, 63, 0 )
			endif
		endif
	//???????
		if $level < 90
			$player3_time =  GetPlayerVar( -1, 3764 )
			$player3_number =  GetPlayerVar( -1, 3404 )
			if $player3_time == $Time
				InsertPlayerVar( -1, 66, $player3_number )
			else
				InsertPlayerVar( -1, 66, 0 )
			endif
		endif
	//??????
		if $level < 100
			$player1_time =  GetPlayerVar( -1, 3762 )
			$player1_number =  GetPlayerVar( -1, 3402 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 64, $player1_number )
			else
				InsertPlayerVar( -1, 64, 0 )
			endif
		endif
	//??????
		if $level < 120
			$Player_titan = GetPlayerVar( -1, 4099 )
			if $Player_titan == $Time
				InsertPlayerVar( -1, 101, 1 )
			else
				InsertPlayerVar( -1, 101, 0 )
			endif
		endif
	//?????
		$player4_time =  GetPlayerVar( -1, 3765 )
		$player4_number =  GetPlayerVar( -1, 3405 )
		if $player4_time == $Time
			InsertPlayerVar( -1, 70, $player4_number )
			InsertPlayerVar( -1, 72, $player4_number )
		else
			InsertPlayerVar( -1, 70, 0 )
			InsertPlayerVar( -1, 72, 0 )
		endif
	//????
		if $level < 120
			$day = GetPlayerVar( -1, 3759 )
			$count = GetPlayerVar( -1, 3228 )
			if $day == $Time
				InsertPlayerVar( -1, 74, $count )
			else
				InsertPlayerVar( -1, 74, 0 )
			endif
		endif
	//????????
		if $level < 50
			$player1_time =  GetPlayerVar( -1, 3756 )
			$player1_number =  GetPlayerVar( -1, 3398 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 76, $player1_number )
			else
				InsertPlayerVar( -1, 76, 0 )
			endif
		endif
	//?????3755-??????
		$playertime = GetPlayerVar( -1, 3755 )
		$today_time = GetSystemTime( "yday" )
			if $playertime == $today_time
				InsertPlayerVar( -1, 77, 1 )
			else
				InsertPlayerVar( -1, 77, 0 )
			endif
	//????
		$RankList = GetRankListValue( 1, 499 )
		$level = GetPlayerInfo( -1, "level" )
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $RankList >= 75
			if $RankList <= 89
				if $level <= 60
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 90
			if $RankList <= 99
				if $level <= 75
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 100
			if $RankList <= 109
				if $level <= 90
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 110
			if $RankList <= 119
				if $level <= 100
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 120
			if $RankList <= 130
				if $level <= 110
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
	//???
		$today_time = GetSystemTime( "yday" )
		$player1_time =  GetPlayerVar( -1, 3770 )
		if $player1_time == $today_time
			InsertPlayerVar( -1, 79, 1 )
		else
			InsertPlayerVar( -1, 79, 0 )
		endif
	//???
		InsertPlayerVar( -1, 80, 0 )

		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar( -1, 3769 )
			if $days == $today_time
				InsertPlayerVar( -1, 81, 1 )
			else
				InsertPlayerVar( -1, 81, 0 )
			endif




	//?????
		$player_time = GetPlayerVar( -1, 3935 )
		$player_round = GetPlayerVar( -1, 3253 )
		if $player_time == $Time
			if $player_round <= 3
				InsertPlayerVar( -1, 87, $player_round )
			endif
		else
			InsertPlayerVar( -1, 87, 0 )
		endif
	//-----??????-----
		$Time = GetSystemTime( "yday" )
		$Playervarsg = GetPlayerVar( -1, 3943 )
		if $Playervarsg == $Time
			InsertPlayerVar( -1, 91, 1 )
		else
			InsertPlayerVar( -1, 91, 0 )
		endif
	//??????
		$xpxt1 = GetPlayerVar( -1, 3996 )
		$Now_Yday =  GetSystemTime( "yday" )
		$result = IsTaskDone( -1, 1735 )
		$xpds = GetPlayerVar( -1, 3321 )
		if $xpds < 24
			if $result == 0
				if $xpxt1 == $Now_Yday
						InsertPlayerVar( -1, 102, 1 )
				else
						InsertPlayerVar( -1, 102, 0 )
				endif
			endif
		endif
	//?????
    $xpxt2 = GetPlayerVar( -1, 3995 )
    if $xpds >= 24
    	if $xpxt2 == $Now_Yday
    		 InsertPlayerVar( -1, 103, 1 )
    	else
    	   InsertPlayerVar( -1, 103, 0 )
    	endif
    endif
	//???
//--???-3412
//--???-3413
		if $level < 120
			$quest_time = GetPlayerVar( -1, 3412 )
			$sysyweek = GetNowWeek()
			if $quest_time == $sysyweek
				$timejoin = GetPlayerVar( -1 , 3413 )
				InsertPlayerVar( -1, 105, $timejoin )
			else
				InsertPlayerVar( -1, 105, 0 )
			endif
		endif
	//???
		InsertPlayerVar( -1, 107, 0 )
	//?????
		$player_time = GetPlayerVar( -1, 4011 )
		if $player_time == $Now_Yday
			InsertPlayerVar( -1, 108, 1 )
		else
			InsertPlayerVar( -1, 108, 0 )
		endif
	//????
		$levelf = GetFieldLevel(-1)
		if $levelf < 20
			$player_time = GetPlayerVar( -1, 4013 )
			if $player_time == $Now_Yday
				InsertPlayerVar( -1, 109, 1 )
			else
				InsertPlayerVar( -1, 109, 0 )
			endif
		endif
	//????
	//???????                  					 3307
	//?????????           						 3332
			$quest_time = GetPlayerVar( -1, 3307 )
			$sysyweek = GetNowWeek()
			if $quest_time == $sysyweek
				$timejoin = GetPlayerVar( -1 , 3332 )
				InsertPlayerVar( -1, 111, $timejoin )
			else
				InsertPlayerVar( -1, 111, 0 )
			endif
	//??
				$player_time = GetPlayerVar( -1, 4047 )
				if $player_time == $Now_Yday
					InsertPlayerVar( -1, 112, 1 )
				else
					InsertPlayerVar( -1, 112, 0 )
				endif
//????-????????
		$today_week = GetNowWeek()
		$last_week = GetPlayerVar(-1 , 3415)
		if $today_week != $last_week
			$cishu = 0
			SetPlayerVar(-1 , 3416 ,$cishu)
		endif
		$player_time = GetPlayerVar( -1, 3416 )
		InsertPlayerVar( -1, 113, $player_time )
//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 4205 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 121, 1 )
		else
			InsertPlayerVar( -1, 121, 0 )
		endif

//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3561 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 122, 1 )
		else
			InsertPlayerVar( -1, 122, 0 )
		endif

		SendActivityRecord( -1, 0 )

	//????
		$today_week = GetNowWeek()
		$luoxuan = GetPlayerVar( -1, 3576 )
		if $today_week == $luoxuan
			InsertPlayerVar( -1, 126, 1 )
		else
			InsertPlayerVar( -1, 126, 0 )
		endif
	//???
		$days = GetPlayerVar( -1, 3617 )
		if $days == $Time
			InsertPlayerVar( -1, 9, 1 )
		else
			InsertPlayerVar( -1, 9, 0 )
		endif
		$days = GetPlayerVar( -1, 4207 )
		if $days == $Time
			InsertPlayerVar( -1, 9, 1 )
		else
			InsertPlayerVar( -1, 9, 0 )
		endif
	//?????
		$chongbai = GetPlayerVar( -1, 3667 )
		if $chongbai == $Time
			InsertPlayerVar( -1, 27, 1 )
		else
			InsertPlayerVar( -1, 27, 0 )
		endif
	//?????
		$Task_Time = GetPlayerVar( -1, 3334 )
//		$Task0 = GetPlayerVar( -1, 3221 )
		$sysweek = GetNowWeek()
		if $Task_Time == $Time
			InsertPlayerVar( -1, 62, 1 )
		else
			InsertPlayerVar( -1, 62, 0 )
		endif
	//????
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $Now_Mday > 7
			if $Now_Mday <= 14
				if $Now_Week == 0
					if $TaskVar == $Time
						InsertPlayerVar( -1, 75, 1 )
					else
						InsertPlayerVar( -1, 75, 0 )
					endif
				endif
			endif
		endif
	//????2012-6-24????
		if $Now_Year == 2012
			if $Now_Month == 6
				if $Now_Mday == 24
							if $TaskVar == $Time
								InsertPlayerVar( -1, 115, 1 )
							else
								InsertPlayerVar( -1, 115, 0 )
							endif
				endif
			endif
		endif
	//????

//????
		$last_time = GetPlayerVar(-1,4087)
		$today_time = GetSystemTime( "yday" )
		if $last_time == $today_time
			InsertPlayerVar( -1, 124, 1 )
		else
			InsertPlayerVar( -1, 124, 0 )
		endif

	//???????
	  InsertPlayerVar( -1, 128, 0 )
	//?????
		InsertPlayerVar( -1, 98, 0 )
	//????
		InsertPlayerVar( -1, 100, 0 )
	//???
		InsertPlayerVar( -1, 104, 0 )
//????
		InsertPlayerVar( -1, 120, 0 )
	//??
		InsertPlayerVar( -1, 116, 0 )
	//3v3
		InsertPlayerVar( -1, 127, 0 )

		SendActivityRecord( -1, 4 )

	}
//--------------------------------------------------------------
//--------------------????---------------------------------
//--------------------------------------------------------------
	function OnLogoutReqActivity(){
		//???????????,?????4???5?????????
		//SendActivityRecord ???-????????
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$Time = GetSystemTime( "yday" )
		$level = GetPlayerInfo( -1, "level" )
	//?????
		$Var2 = GetPlayerVar( -1, 3763 )
		if $Var2 == $Time
			InsertPlayerVar( -1, 3, 1 )
		else
			InsertPlayerVar( -1, 3, 0 )
		endif
	//??????
		$player1_time = GetPlayerVar( -1, 3923 )
		if $Now_Hour >= 12
			if $Now_Hour <= 13
				if $player1_time == $Time
					InsertPlayerVar( -1, 50, 1 )
				else
					InsertPlayerVar( -1, 50, 0 )
				endif
			endif
		endif
		if $Now_Hour >= 20
			if $Now_Hour <= 21
				if $player1_time == $Time
					InsertPlayerVar( -1, 52, 1 )
				else
					InsertPlayerVar( -1, 52, 0 )
				endif
			endif
		endif
	//?????
		if $level < 60
			$player2_time =  GetPlayerVar( -1, 3761 )
			$player2_number =  GetPlayerVar( -1, 3401 )
			if $player2_time == $Time
				InsertPlayerVar( -1, 65, $player2_number )
			else
				InsertPlayerVar( -1, 65, 0 )
			endif
		endif
	//?????
		if $level < 75
			$player_time =  GetPlayerVar( -1, 3760 )
			$player_number =  GetPlayerVar( -1, 3400 )
			if $player_time == $Time
				InsertPlayerVar( -1, 63, $player_number )
			else
				InsertPlayerVar( -1, 63, 0 )
			endif
		endif
	//???????
		if $level < 90
			$player3_time =  GetPlayerVar( -1, 3764 )
			$player3_number =  GetPlayerVar( -1, 3404 )
			if $player3_time == $Time
				InsertPlayerVar( -1, 66, $player3_number )
			else
				InsertPlayerVar( -1, 66, 0 )
			endif
		endif
	//??????
		if $level < 100
			$player1_time =  GetPlayerVar( -1, 3762 )
			$player1_number =  GetPlayerVar( -1, 3402 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 64, $player1_number )
			else
				InsertPlayerVar( -1, 64, 0 )
			endif
		endif
	//??????
		if $level < 120
			$Player_titan = GetPlayerVar( -1, 4099 )
			if $Player_titan == $Time
				InsertPlayerVar( -1, 101, 1 )
			else
				InsertPlayerVar( -1, 101, 0 )
			endif
		endif
	//?????
		if $Now_Hour >= 12
			if $Now_Hour <= 13
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 70, $player4_number )
				else
					InsertPlayerVar( -1, 70, 0 )
				endif
			endif
		endif
		if $Now_Hour >= 20
			if $Now_Hour <= 21
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 72, $player4_number )
				else
					InsertPlayerVar( -1, 72, 0 )
				endif
			endif
		endif
	//????
		$day = GetPlayerVar( -1, 3759 )
		$count = GetPlayerVar( -1, 3228 )
		if $day == $Time
			InsertPlayerVar( -1, 74, $count )
		else
			InsertPlayerVar( -1, 74, 0 )
		endif
	//????????
		if $level < 45
			$player1_time =  GetPlayerVar( -1, 3756 )
			$player1_number =  GetPlayerVar( -1, 3398 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 76, $player1_number )
			else
				InsertPlayerVar( -1, 76, 0 )
			endif
		endif
	//????
		$RankList = GetRankListValue( 1, 499 )
		$level = GetPlayerInfo( -1, "level" )
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $RankList >= 75
			if $RankList <= 89
				if $level <= 60
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 90
			if $RankList <= 99
				if $level <= 75
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 100
			if $RankList <= 109
				if $level <= 90
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 110
			if $RankList <= 119
				if $level <= 100
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 120
			if $RankList <= 130
				if $level <= 110
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
	//???
//		$today_time = GetSystemTime( "yday" )
//		$player1_time =  GetPlayerVar( -1, 3770 )
//		if $player1_time == $today_time
//			InsertPlayerVar( -1, 79, 1 )
//		else
//			InsertPlayerVar( -1, 79, 0 )
//		endif
	//???
//		InsertPlayerVar( -1, 80, 0 )
	//??????
		$xpxt1 = GetPlayerVar( -1, 3996 )
		$Now_Yday =  GetSystemTime( "yday" )
		$result = IsTaskDone( -1, 1735 )
		$xpds = GetPlayerVar( -1, 3321 )
		if $xpds < 24
			if $result == 0
				if $xpxt1 == $Now_Yday
						InsertPlayerVar( -1, 102, 1 )
				else
						InsertPlayerVar( -1, 102, 0 )
				endif
			endif
		endif
	//?????
    $xpxt2 = GetPlayerVar( -1, 3995 )
    if $xpds >= 24
    	if $xpxt2 == $Now_Yday
    		 InsertPlayerVar( -1, 103, 1 )
    	else
    	   InsertPlayerVar( -1, 103, 0 )
    	endif
    endif
	//???
//		InsertPlayerVar( -1, 105, 0 )
	//???
//		InsertPlayerVar( -1, 107, 0 )
	//?????
//		$player_time = GetPlayerVar( -1, 4011 )
//		if $player_time == $Now_Yday
//			InsertPlayerVar( -1, 108, 1 )
//		else
//			InsertPlayerVar( -1, 108, 0 )
//		endif
	//????
		$levelf = GetFieldLevel(-1)
		if $levelf < 20
			$player_time = GetPlayerVar( -1, 4013 )
			if $player_time == $Now_Yday
				InsertPlayerVar( -1, 109, 1 )
			else
				InsertPlayerVar( -1, 109, 0 )
			endif
		endif
	//-----??????-----
		$Time = GetSystemTime( "yday" )
		$Playervarsg = GetPlayerVar( -1, 3943 )
		if $Playervarsg == $Time
			InsertPlayerVar( -1, 91, 1 )
		else
			InsertPlayerVar( -1, 91, 0 )
		endif
	//3?????
//		$year = GetSystemTime( "year" )
//		$month = GetSystemTime( "month" )
//		$day = GetSystemTime( "mday" )
//		if $year == 2012
//			$monthadd = $month * 100
//			$dayadd = $monthadd + $day
//			if $dayadd < 529
				$player_time = GetPlayerVar( -1, 4047 )
				if $player_time == $Now_Yday
					InsertPlayerVar( -1, 112, 1 )
				else
					InsertPlayerVar( -1, 112, 0 )
				endif
//			endif
//		endif
//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3420 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 121, 1 )
		else
			InsertPlayerVar( -1, 121, 0 )
		endif
//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3561 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 122, 1 )
		else
			InsertPlayerVar( -1, 122, 0 )
		endif
//	ePurpose_Logout = 2//?????????
		SendActivityRecord( -1, 2 )
//		//?????
//			if $Now_Hour >= 12
//				if $Now_Hour <= 14
//					$shiluo = GetPlayerVar( -1, 3915 )
//					if $shiluo == $Time
//						InsertPlayerVar( -1, 6, 1 )
//					else
//						InsertPlayerVar( -1, 6, 0 )
//					endif
//				endif
//			endif
//	//??????
//			if $Now_Hour >= 12
//				if $Now_Hour <= 14
//					$last_time =  GetPlayerVar( -1, 3915 )
//					if $last_time == $Time
//						InsertPlayerVar( -1, 7, 1 )
//					else
//						InsertPlayerVar( -1, 7, 0 )
//					endif
//				endif
//			endif
	//???????
//			if $Now_Hour >= 19
//				if $Now_Hour <= 21
//					$jinzita = GetPlayerVar( -1, 3615 )
//					if $jinzita == $Time
//						InsertPlayerVar( -1, 8, 1 )
//					else
//						InsertPlayerVar( -1, 8, 0 )
//					endif
//				endif
//			endif
	//???
			if $Now_Hour >= 18
				if $Now_Hour <= 20
					$days = GetPlayerVar( -1, 3617 )
					if $days == $Time
						InsertPlayerVar( -1, 9, 1 )
					else
						InsertPlayerVar( -1, 9, 0 )
					endif
				endif
			endif
	//?????
			$chongbai = GetPlayerVar( -1, 3667 )
			if $chongbai == $Time
				InsertPlayerVar( -1, 27, 1 )
			else
				InsertPlayerVar( -1, 27, 0 )
			endif
	//?????
		$Task_Time = GetPlayerVar( -1, 3334 )
//		$Task0 = GetPlayerVar( -1, 3221 )
		$sysweek = GetNowWeek()
		if $Task_Time == $Time
			InsertPlayerVar( -1, 62, 1 )
		else
			InsertPlayerVar( -1, 62, 0 )
		endif
	//????
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $Now_Mday > 7
			if $Now_Mday <= 14
				if $Now_Week == 0
					if $Now_Hour >= 13
						if $Now_Hour <= 15
							if $TaskVar == $Time
								InsertPlayerVar( -1, 75, 1 )
							else
								InsertPlayerVar( -1, 75, 0 )
							endif
						endif
					endif
				endif
			endif
		endif
		if $Now_Year == 2012
			if $Now_Month == 6
				if $Now_Mday == 24
							if $TaskVar == $Time
								InsertPlayerVar( -1, 115, 1 )
							else
								InsertPlayerVar( -1, 115, 0 )
							endif
				endif
			endif
		endif
	//????

//????
		InsertPlayerVar( -1, 100, 0 )
//???
		InsertPlayerVar( -1, 104, 0 )
//????
//		InsertPlayerVar( -1, 120, 0 )
////?????
//		InsertPlayerVar( -1, 98, 0 )
//	ePurpose_Weekly = 4//????
		SendActivityRecord( -1, 4 )
  	//SendActivityRecord ???- ???????

	}
//--------------------------------------------------------------
//--------------------------------------------------------------
//--------------------------------------------------------------
	function OnMosnterKillHalfLimit(){

		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Time = GetSystemTime( "yday" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$level = GetPlayerInfo( -1, "level" )
  	//???Record3??????
		SendActivityRecord( -1, 3 )

	}
	function OnIncreaseLoveExp(){

		PlayEffect( -1  , "common\xin\xin.ini" )

	}
	function OnIncreaseLoveLevel(){

		PlayEffect( -1  , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" )

	}

	function OnGainHappiness(){

	}

	function OnIncreaseMarriageExp(){

	}

	function OnIncreaseMarriageLevel(){

	}

	function OnMarriageCeremonyBegin(){

		//??????2????

		//???????ID,??????ID?-1
		$id1 = GetPlayerID()
		$id2 = GetTeamHeaderID( -1 )
		//????????
		if $id1 == $id2
			$pid1 = GetTeamMemberID( -1 , 0 )
			$pid2 = GetTeamMemberID( -1 , 1 )
			$pid3 = GetTeamMemberID( -1 , 2 )
			$pid4 = GetTeamMemberID( -1 , 3 )
			$pid5 = GetTeamMemberID( -1 , 4 )
			$pid6 = GetTeamMemberID( -1 , 5 )
			//???ID,???????ID
			if $pid1 > 0
				if $pid1 != $id1
					$id1 = $pid1
				endif
			endif

			if $id1 == $id2
				if $pid2 > 0
					if $pid2 != $id1
						$id1 = $pid2
					endif
				endif
			endif

			if $id1 == $id2
				if $pid3 > 0
					if $pid3 != $id1
						$id1 = $pid3
					endif
				endif
			endif

			if $id1 == $id2
				if $pid4 > 0
					if $pid4 != $id1
						$id1 = $pid4
					endif
				endif
			endif

			if $id1 == $id2
				if $pid5 > 0
					if $pid5 != $id1
						$id1 = $pid5
					endif
				endif
			endif

			if $id1 == $id2
				if $pid6 > 0
					if $pid6 != $id1
						$id1 = $pid6
					endif
				endif
			endif
		endif

		#name1 = GetPlayerInfo( $id1 , "name" )
		#name2 = GetPlayerInfo( $id2 , "name" )
		//???????????????+1
		$rea = CheckRelation($id1, $id2)

		if $rea != 3
			$marrycount = GetServerVar( 114 )
			$marrycount = $marrycount + 1
			SetServerVar ( 114 , $marrycount )
			//???????????,3725
			SetPlayerVar( $id1 , 3725 , $marrycount)
			SetPlayerVar( $id2 , 3725 , $marrycount)
			//???????????
			$line = GetServerLineID()
			SetPlayerVar( $id1 , 3727 , $line )
			SetPlayerVar( $id2 , 3727 , $line )
		endif

	}
	//????
	function OnMarriageCeremonyEnd(){

		BC( "screen", "map", 208, "The wedding has ended. Thanks for your participation. Enjoy the rest of the game." )

	}
//------------??????-----------
	function OnLevelUp(){
		$level = GetPlayerInfo( -1, "level" )

		//??????
		if $level >= 20
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 0
				BC( "screen", "player", -1, "Fate Card system activated!" )
				AddTarotSlot(-1,2)
				AddTarotCostMax(-1,10)
				AddTarotCard(-1,103)
				AddTarotCard(-1,104)
				AddTarotCard(-1,108)
				AddTarotCard(-1,110)
				AddTarotCard(-1,113)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
			$VarCardplus = GetPlayerVar( -1, 250 )
			if $VarCardplus == 0
				AddTarotCostMax(-1,10)
				SetPlayerVar( -1, 250, 1 )
			endif
		endif
		if $level >= 85
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 1
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		if $level >= 110
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 2
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif

		if $level >= 30
			if $level < 60
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 0
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 30
						BC( "screen", "player", -1, "You have already enabled 30 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 30
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 1 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif
			endif
		endif

		if $level >= 60
			if $level < 75
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 1
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 35
						BC( "screen", "player", -1, "You have already enabled 35 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 35
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 2 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif
			endif
		endif

		if $level >= 75
			if $level < 90
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 2
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 40
						BC( "screen", "player", -1, "You have already enabled 40 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 40
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 3 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif
			endif
		endif

		if $level >= 90
			if $level < 100
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 3
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 45
						BC( "screen", "player", -1, "You have already enabled 45 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 45
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 4 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif
			endif
		endif

		if $level >= 100
			if $level < 105
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 4
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 50
						BC( "screen", "player", -1, "You have already enabled 50 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 50
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 5 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif
			endif
		endif

		if $level >= 105
			if $level < 110
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 5
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 55
						BC( "screen", "player", -1, "You have already enabled 55 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 55
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 6 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif
			endif
		endif

		if $level >= 110
			if $level < 115
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 6
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 60
						BC( "screen", "player", -1, "You have already enabled 60 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 60
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 7 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif
			endif
		endif

		if $level >= 115
			if $level < 120
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 7
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 65
						BC( "screen", "player", -1, "You have already enabled 65 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 65
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 8 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif
			endif
		endif

		if $level >= 120
			$Var1 = GetPlayerVar( -1, 4089 )
			if $Var1 == 8
				//?????????????????
				$count = GetPackMaxCount( -1, 0 )
				if $count >= 70
					BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
					return
				endif
				//?????,???????5???
				$a = $count % 5
				if $a != 0
					BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
					return
				endif
				//????
				$newcount = 70
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 9 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif

	}

	function OnFieldLevelUp(){

		$levelf = GetFieldLevel(-1)
		if $levelf >= 25
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 3
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif

		}

	function OnDead(){


		$killerid = GetKillerID(-1)
//		BC("chat", "player", -1, "GetKillerID = ", $killerid)
//		#killername = GetPlayerInfo($killerid,"name")
//		$level = GetPlayerInfo($killerid,"level")
//		BC("chat","player",-1,"GUID:08714000104",#killername,"GUID:08714000105",$level,")")

		if $killerid > 0
			$map_id = GetPlayerInfo(-1,"mapid")

			//4072 ??????start
			if $map_id >= 25801
				if $map_id <= 25850
					$killerid = GetKillerID(-1)
					#name = GetPlayerInfo($killerid,"name")
					$getvar = GetPlayerVar($killerid,4072)
					$getvar += 1
					SetPlayerVar($killerid,4072,$getvar)
					if $getvar == 10
						BC("screen","map",$map_id,"The hero ",#name,"] is on a killing spree! Killed ",$getvar," people so far!")
					endif
					if $getvar == 20
						BC("screen","map",$map_id,"The hero ",#name,"] is on a murderous rampage! Killed ",$getvar," people so far!")
					endif
					if $getvar == 50
						BC("screen","map",$map_id,"The hero ",#name,"] is unstoppable! Killed ",$getvar," people so far!")
						BC("chat","map",$map_id,"The hero ",#name,"] is unstoppable! Killed ",$getvar," people so far!")
					endif
					if $getvar == 100
						BC("screen","map",$map_id,"The hero ",#name,"] is on a mad slaughter!  Killed ",$getvar," people so far!")
						BC("chat","map",$map_id,"The hero ",#name,"] is on a mad slaughter!  Killed ",$getvar," people so far!")
						BC("screen","servergroup",-1,"The hero ",#name,"] went on a mad slaughter in the Demonshard Throne!")
						BC("chat","servergroup",-1,"The hero ",#name,"] went on a mad slaughter in the Demonshard Throne!")
					endif
					if $getvar == 200
						BC("screen","map",$map_id,"The hero ",#name,"] is on a godlike rampage! Killed ",$getvar," people so far!")
						BC("screen","map",$map_id,"The hero ",#name,"] is on a godlike rampage! Killed ",$getvar," people so far!")
						BC("chat","servergroup",-1,"The hero ",#name,"] went on a godlike rampage in the Demonshard Throne!")
						BC("chat","servergroup",-1,"The hero ",#name,"] went on a godlike rampage in the Demonshard Throne!")
					endif
					if $getvar == 500
						BC("screen","map",$map_id,"The hero ",#name,"] is greater than godlike! Killed ",$getvar," people so far! Can anyone stop them?!")
						BC("chat","map",$map_id,"The hero ",#name,"] is greater than godlike! Killed ",$getvar," people so far! Can anyone stop them?!")
						BC("screen","servergroup",-1,"The hero ",#name,"] was greater than godlike in the Demonshard Throne!")
						BC("chat","servergroup",-1,"The hero ",#name,"] was greater than godlike in the Demonshard Throne!")
					endif

				endif
			endif
			//4072 ??????end

			//?????3v3??start
			if $map_id >= 26421
				if $map_id <= 26520
					$killerID = GetKillerID(-1)
					#killername = GetPlayerInfo($killerID,"name")

					$playerid = GetPlayerID()
					#fieldid = PK3V3_GET_FIELDSID_BY_PLAYERID($playerid)
					$campid = PK3V3_CAMP_INFO_GET_CAMPID_BY_PLAYERID(#fieldid,$playerid)
					$ectype_id = GetPlayerInfo($playerid,"mapid")
					$isinbattle = GetEctypeVar($ectype_id,0)
					if $isinbattle == 1
						$team_mhp_id = 118 + $campid
						$team_hp_id = 116 + $campid
						$team_mhp = GetEctypeVar($ectype_id,$team_mhp_id)
						$team_hp = GetEctypeVar($ectype_id,$team_hp_id)
						$diffhp = $team_mhp / -10
						PK3V3_MODIFYHP(#fieldid,$campid,$diffhp)
//						BC("chat","player",$killerID,"|diffhp=",$diffhp)
					endif

//4201	3.85 3v3	??????
//???	????+1?,??????????2?
//			3457	3.85 3v3	???????
					$getkilled = GetPlayerVar(-1,3457)
					$getkilled += 1
					SetPlayerVar(-1,3457,$getkilled)
					if $getkilled <= 2
//						$score_ori = PK3V3_GET_SCORE($killerID)
//						$score = $score_ori + 1
//						PK3V3_SET_SCORE($killerID,$score)
						$score_ori = GetPlayerVar($killerID,4201)
						$score = $score_ori + 1
						SetPlayerVar($killerID,4201,$score)
						BC("screen","map",$map_id,#killername,"Got just another kill! Score +1")
						BC("chat","player",$killerID,"You got another kill! Score +1")
						SetPlayerVar($killerID,3462,1)
					endif
//????	????		100
//??5?	????5?		150
//			3458	3.85 3v3	?????
					$todaykill = GetPlayerVar($killerID,3458)
					$todaykill += 1
					SetPlayerVar($killerID,3458,$todaykill)
					if $todaykill == 1
//						$score_ori = PK3V3_GET_SCORE($killerID)
//						$score = $score_ori + 100
//						PK3V3_SET_SCORE($killerID,$score)
						$score_ori = GetPlayerVar($killerID,4201)
						$score = $score_ori + 100
						SetPlayerVar($killerID,4201,$score)
						BC("screen","map",$map_id,#killername,"Obtained Warsoul: First Blood Score +100")
						BC("chat","player",$killerID,"Obtained Warsoul: First Blood Score +100")
						SetPlayerVar($killerID,3463,1)
					endif
					if $todaykill == 5
//						$score_ori = PK3V3_GET_SCORE($killerID)
//						$score = $score_ori + 150
//						PK3V3_SET_SCORE($killerID,$score)
						$score_ori = GetPlayerVar($killerID,4201)
						$score = $score_ori + 150
						SetPlayerVar($killerID,4201,$score)
						BC("screen","map",$map_id,#killername,"Obtained Warsoul: 5 kills acheivement unlocked! Score +150")
						BC("chat","player",$killerID,"Obtained Warsoul: 5 kills acheivement unlocked! Score +150")
						SetPlayerVar($killerID,3464,1)
					endif
//????	???20,30,40,50.?		10
//			3459	3.85 3v3	?????
					$grondkill = GetPlayerVar($killerID,3459)
					$grondkill += 1
					SetPlayerVar($killerID,3459,$grondkill)
					//??
					if $grondkill >= 10
						$gkmod10 = $grondkill % 10
						if $gkmod10 == 0
//							$score_ori = PK3V3_GET_SCORE($killerID)
//							$score = $score_ori + 10
//							PK3V3_SET_SCORE($killerID,$score)
							$score_ori = GetPlayerVar($killerID,4201)
							$score = $score_ori + 10
							SetPlayerVar($killerID,4201,$score)
							BC("chat","player",$killerID,"Obtained Killing Spree! Score +10")
							//??
							if $grondkill < 20
								BC("screen","map",$map_id,#killername," received ",$grondkill," Killing Spree! Score +10")
							else
								BC("screen","map",$map_id,#killername," received ",$grondkill," received +10 extra reward!")
							endif
							SetPlayerVar(-1,3465,1)
						endif
					endif

				endif
			endif
			//?????3v3??end


		endif


//--------------------?????---------------------------------
		//???????
		$map_id = GetPlayerInfo(-1,"mapid")
		if $map_id >= 26621
			if $map_id <= 26626
				$isspecial = 1
				$deadpoint = RandomNumber(0,5)
				SetPlayerVar(-1,3595,$deadpoint)
			endif
		endif

		//--??????
		if $map_id >= 25801
			if $map_id <= 25920
				$isspecial = 1
			endif
		endif

		//--?????
		if $map_id >= 26421
			if $map_id <= 26520
				$isspecial = 1
			endif
		endif

		//--????
		$var3362 = GetPlayerVar(-1,3362)

		if $map_id >= 26701
			if $map_id <= 26800
				$isspecial = 1
				$ectype_var = GetEctypeVar(-1,57)
				if $var3362 == 1
					SetPlayerVar(-1,3595,0)
				endif
				if $var3362 == 2
					SetPlayerVar(-1,3595,1)
				endif
				if $var3362 == 3
					SetPlayerVar(-1,3595,2)
				endif
				if $ectype_var == 1
					SetPlayerVar(-1,3595,3)
				endif

			endif
		endif

		if $isspecial == 0
			SetPlayerVar(-1,3595,0)
		endif
//--------------------?????---------------------------------end
	}
  function OnReqRushFieldTask(){
  	$mylevel = GetPlayerInfo(-1, "level")
  	$myfieldlevel = GetFieldLevel(-1 )
  	$100minglevel = GetRankListValue(1, 74)
    $100mingfieldlevel = GetFieldRankListValue( 74)

    $mday = GetSystemTime("mday")
    $day =  GetPlayerVar( -1, 3572 )
    if $day == $mday
    	BC( "screen", "player", -1, "You've already accepted today's Race to Elysium quest. You can only do so once per day!" )
    	return
    endif

    //???????
    $result = 0
    $result1 = IsTaskAccept( -1, 1870 )
    $result = $result + $result1
    $result2 = IsTaskAccept( -1, 1880 )
    $result = $result + $result2
    $result3 = IsTaskAccept( -1, 1881 )
    $result = $result + $result3
    $result4 = IsTaskAccept( -1, 1882 )
    $result = $result + $result4
    $result5 = IsTaskAccept( -1, 1883 )
    $result = $result + $result5
    $result6 = IsTaskAccept( -1, 1884 )
    $result = $result + $result6
    $result7 = IsTaskAccept( -1, 1885 )
    $result = $result + $result7
    $result8 = IsTaskAccept( -1, 1886 )
    $result = $result + $result8
    if $result != 8
    	BC( "screen", "player", -1, "You haven't yet completed the Race to Elysium quest of that grade. Please complete it before accepting another!" )
    	return
    endif
    //60?-75?
    if $mylevel >= 60
	    if $mylevel < 75
	    	if $100minglevel >= 75
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1880 )
		    		return
	    		endif
	    	endif
	    endif
    endif
    //75?-90?
    if $mylevel >= 75
	    if $mylevel < 90
	    	if $100minglevel >= 90
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1881 )
		    		return
	    		endif
	    	endif
	    endif
    endif
    //90?-100?
    if $mylevel >= 90
	    if $mylevel < 100
	    	if $100minglevel >= 100
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1882 )
		    		return
	    		endif
	    	endif
	    endif
    endif
    //100?-115?
    if $mylevel >= 100
	    if $mylevel < 115
	    	if $100minglevel >= 115
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1883 )
		    		return
	    		endif
	    	endif
	    endif
    endif
    //115?-120?
    if $mylevel >= 115
	    if $mylevel < 120
	    	if $100minglevel >= 120
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1884 )
		    		return
	    		endif
	    	endif
	    endif
    endif
    //??0-15
    if $myfieldlevel >= 0
	    if $myfieldlevel < 15
	    	if $100mingfieldlevel >= 15
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1885 )
		    		return
	    		endif
	    	endif
	    endif
    endif
    //??15-30
    if $myfieldlevel >= 15
	    if $myfieldlevel < 30
	    	if $100mingfieldlevel >= 30
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1886 )
		    		return
	    		endif
	    	endif
	    endif
    endif
    BC("screen","player",-1,"You don't meet the requirements for the Race quest!")
  }
//----------?3.76??3.80-------------------
//  	//?????? activity1
//  	function OnLotteryActivity1(){
//
//		$mapid = 568
//		$ectype_ID = GetEctypeID(-1,$mapid)
//		$ectype_UID = GetEctypeUniqueID( -1, $mapid )
//		$Player_UID = GetPlayerVar( -1, 3863 )
//		$player_map = GetPlayerInfo(-1,"mapid")
//
//		$playerid = GetPlayerID()
//
//		$team = IsPlayerInTeam(-1)
//		if $team == 0
//			BC("dialogbox","player",-1,"Please leave your party. Only one person may enter this instance.")
//			return
//		endif
//
//		if $player_map == $mapid
//			BC("screen","player",-1,"GUID:08714000164")
//			return
//		endif
//
//		//?????????
//		$kind = GetPlayerVar(-1,3518)
//		if $kind > 0
//			if $ectype_ID > 0
//				if $Player_UID == $ectype_UID
//					$fly = FlyToEctype(-1,568,39,63)
//					if $fly > 0
//						BC( "screen" , "player" , -1, "GUID:08714000165" )
//						return
//					endif
//				else
//					SetPlayerVar(-1,3518,0)
//					call EntranceDisneyland()
//				endif
//			else
//				SetPlayerVar(-1,3518,0)
//				call EntranceDisneyland()
//			endif
//		else
//			call EntranceDisneyland()
//		endif
//
//
//
//
//}
//
//		function EntranceDisneyland(){
//
//				//????
//				$ectype_ID = GetEctypeID(-1, 568)
//				if $ectype_ID > 0
//					ReleaseEctype(-1,568)
//				endif
//
//		//    ????
//		//		$dengji = GetPlayerInfo(-1,"level")
//		//		if $dengji < 75
//		//			BC("dialogbox","player",-1,"The path ahead is too dangerous for you! You need to be at least LV75 to continue!")
//		//			return
//		//		endif
//
//		//    ?????
//				$today = GetSystemTime("yday")
//				$lastday = GetPlayerVar(-1,4082)
//				if $lastday == $today
//					BC("dialogbox","player",-1,"GUID:08714000167")
//					return
//				endif
//
//			  //???????????
//				$Verify_item1 = GetPlayerInfo(-1,"item",2001)
//				if $Verify_item1 < 1
//					$Verify_item2 = GetPlayerInfo(-1,"item",2002)
//						if $Verify_item2 < 1
//							$Verify_item3 = GetPlayerInfo(-1,"item",2000)
//								if $Verify_item3 < 1
//									BC("screen","player",-1,"GUID:08714000168")
//									return
//								endif
//						endif
//				endif
//
//				$revalue1 = SubPlayerInfo(-1,"item",2001,1)
//				if $revalue1 == 0
//					SetPlayerVar(-1,3518,1)
//				else
//					$revalue2 = SubPlayerInfo(-1,"item",2002,1)
//					if $revalue2 == 0
//						SetPlayerVar(-1,3518,2)
//					else
//						$revalue3 = SubPlayerInfo(-1,"item",2000,1)
//						if $revalue3 == 0
//							SetPlayerVar(-1,3518,3)
//						else
//							BC("screen","player",-1,"GUID:08714000169")
//							return
//						endif
//					endif
//				endif
//
//				$fly = FlyToEctype(-1,568,39,63)
//				if $fly > 0
//					$ectype_ID = GetEctypeID(-1, 568)
//		//			SetPlayerActLog(-1,25,0)
//					$today = GetSystemTime("yday")
//					SetPlayerVar(-1,4082,$today)
//					SetPlayerVar(-1,3863,$fly)
//					SetPlayerVar(-1,3519,0)
//					StartEctypeTimer($ectype_ID, 0)
//					BC( "screen" , "player" , -1, "GUID:08714000170" )
//				else
//					BC( "screen" , "player" , -1, "The instance is full, please try again later." )
//					return
//				endif
//
//
//}
//----------?3.76??3.80-------------------
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
						BC("messagebox","player",-1,"Query result is wrong! Wrong code. (",$lastrace,")(",$lastjoin,")(",$race_result,")")
						return
					endif
					if $race_result == 3
						if $chipQ > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipQ * 2
							$chipQ = 0
							SendMail(-1,"Happy Run Result","Congratulations! The Whispers of Spring you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"Happy Run Result","Sorry, the contestant you've blessed in the last match has lost their match. You can receive some small gifts from Dada!",0,0)
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
							SendMail(-1,"Happy Run Result","Congratulations! The Conqueror you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"Happy Run Result","Sorry, the contestant you've blessed in the last match has lost their match. You can receive some small gifts from Dada!",0,0)
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
							SendMail(-1,"Happy Run Result","Congratulations! The Burning Sky you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"Happy Run Result","Sorry, the contestant you've blessed in the last match has lost their match. You can receive some small gifts from Dada!",0,0)
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
							SendMail(-1,"Happy Run Result","Congratulations! The Crystal Maid you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"Happy Run Result","Sorry, the contestant you've blessed in the last match has lost their match. You can receive some small gifts from Dada!",0,0)
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
//					BC("chat","player",-1,"GUID:08714000192")
				endif
			endif
		endif
	//-----------????end----------------------

	}
//-----------------?????????--------------------------------
	function OnGua(){
	$del_count = SubPlayerInfo(-1,"money",500000)
	if $del_count != 0
		BC("dialogbox","player",-1,"Insufficient coins in your bag! Please get enough coins first!")
    return
  endif
  $var = GetGuaGuaLe( -1 )
  SetPlayerVar(-1,4210,$var)
	$v4 = $var % 10
	$var -= $v4
	$v3 = $var % 100
	$var -= $v3
	$v2 = $var % 1000
	$var -= $v2
	$v1 = $var % 10000
	$v3 = $v3 / 10
	$v2 = $v2 / 100
	$v1 = $v1 / 1000
	BC("messagebox", "player", -1 , "The lucky number you chose today is ",$v1,"",$v2,"",$v3,"",$v4,"! Hermes will release the lucky number before 10:00 PM. Let's wait and see!")
	SetPlayerVar(-1,3578,1)
	$var_num = GetPlayerVar(-1,4210)
	$num = 0
	$var_right = GetPlayerVar(-1,3579)
	$var_global = GetGlobalVar(129)
	SetPlayerVar(-1,4209,$var_global)
		$n = 1
		while $n < 5
			$chu = powercommand(10, $n)
			$mod1 = $var_num % $chu
			$mod2 = $var_global % $chu
			if $mod1 == $mod2
				$var_right += 1
				SetPlayerVar(-1,3579,$var_right)
			endif
			$var_num = $var_num - $mod1
			$var_global = $var_global - $mod2
			$n += 1
		endwhile
	if $var_right == 0
		SetPlayerVar(-1,3579,10)
	endif
	$Now_Mday =  GetSystemTime( "mday" )
	SetPlayerVar(-1,3578,$Now_Mday)
		}
	function guaguale(){

	$Now_Minute =  GetSystemTime( "minute")
	$Now_Hour =  GetSystemTime( "hour" )
	$Now_Mday =  GetSystemTime( "mday" )
  //????2
  $playervar = GetPlayerVar(-1,3579)
    if $playervar <= 0
     return
    endif
    $playervar = GetPlayerVar(-1,398)
    if $playervar != 0
     return
    endif
  $His_Mday =  GetPlayerVar(-1,3578)
	$time = $Now_Hour * 100
	$time += $Now_Minute
	$Now_Mday *= 10000
	$His_Mday *= 10000
	$time += $Now_Mday
	$time2 = $His_Mday + 2200

	//BC("chat","player",-1,"|time=",$time)
	//BC("chat","player",-1,"|time2=",$time2)
	if $time >= $time2
		$var = GetPlayerVar(-1,4210)
		$v4 = $var % 10
		$var -= $v4
		$v3 = $var % 100
		$var -= $v3
		$v2 = $var % 1000
		$var -= $v2
		$v1 = $var % 10000
		$v3 = $v3 / 10
		$v2 = $v2 / 100
		$v1 = $v1 / 1000
		$var_h = GetPlayerVar(-1,4209)
		$v4_h = $var_h % 10
		$var_h -= $v4_h
		$v3_h = $var_h % 100
		$var_h -= $v3_h
		$v2_h = $var_h % 1000
		$var_h -= $v2_h
		$v1_h = $var_h % 10000
		$v3_h = $v3_h / 10
		$v2_h = $v2_h / 100
		$v1_h = $v1_h / 1000
		BC("messagebox", "player", -1 , "The lucky number today is ",$v1_h,"",$v2_h,"",$v3_h,"",$v4_h,"The lucky number you chose today is ",$v1,"",$v2,"",$v3,"",$v4,"! Find { Lucky Easter Egg[1198] to take the reward!")
		SetPlayerVar(-1,398,1)
	endif

		}
//-----------------?????????--------------------------------

	//-----------???----------------------
			function valentine(){
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
  //????2
    $playervar = GetPlayerVar(-1,414)
    if $playervar != 0
     return
    endif

	if $Now_Year != 2013
    return
  endif
   if $Now_Yday < 226
    return
   endif
  //????---???????---
    $playervar = GetPlayerVar(-1,413)
    if $playervar != 0
     return
    endif
	$idp = GetPlayerID()
  $value1 = GetGlobalVar(171)
  $value2 = GetGlobalVar(172)
  $value3 = GetGlobalVar(173)

  if $idp == $value1
		SendMail(-1,"Charisma Ranking List","Congratulations for earning first place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
		SetPlayerVar(-1,414,1)
  endif
	if $idp == $value2
		SendMail(-1,"Charisma Ranking List","Congratulations for earning second place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
		SetPlayerVar(-1,414,1)
  endif
	if $idp == $value3
		SendMail(-1,"Charisma Ranking List","Congratulations for earning third place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
		SetPlayerVar(-1,414,1)
  endif

		}
	//-----------???----------------------end


function OnGuildInfoReady(){
		$Now_Week =  GetSystemTime( "week" )
		$Now_Yday =  GetSystemTime( "yday" )
    $double_days = GetPlayerVar(-1 , 3626)
    $double_weeks = GetPlayerVar(-1 , 3216)
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Year =  GetSystemTime( "year" )
		$level = GetPlayerInfo(-1,"level")
		$levelf = GetFieldLevel(-1)
		$log = GetPlayerVar(-1,3473)
		//?????
			if $Now_Year == 2013
				if $Now_Month == 4
					if $Now_Mday >= 9
						if $Now_Mday <= 30
							if $level >= 60
								$issentmail = GetPlayerVar(-1,366)
								if $issentmail == 0
										//?????????????
										$low = GetGuildHoldDomainNum(0)
										//?????????????
										$middle = GetGuildHoldDomainNum(1)
										//?????????????
										$high = GetGuildHoldDomainNum(2)
										$playerid = GetPlayerID()
//										BC("chat","player",-1,"playerid",$playerid,"var1=",$low,"var2=",$middle,"var3=",$high)
										$middle = $middle * 2
										$high = $high * 3
										$num = $low + $middle
										$num = $num + $high
										if $num >= 45
											SendMail(-1,"Territory War State Compensation","Territory War State is removed, all players can learn the newly added Guild Skill. Afterwards, gain the passive skill which has attributes that are similar to the original Territory War State attributes. To compensate for the trouble we have given you, we have prepared these amazing gifts for you!",0,44783)
											SetPlayerVar(-1,3473,1)
										endif
										if $num < 45
											if $num >= 30
												SendMail(-1,"Territory War State Compensation","Territory War State is removed, all players can learn the newly added Guild Skill. Afterwards, gain the passive skill which has attributes that are similar to the original Territory War State attributes. To compensate for the trouble we have given you, we have prepared these amazing gifts for you!",0,44784)
												SetPlayerVar(-1,3473,2)
											endif
										endif
										if $num < 30
											if $num >= 20
												SendMail(-1,"Territory War State Compensation","Territory War State is removed, all players can learn the newly added Guild Skill. Afterwards, gain the passive skill which has attributes that are similar to the original Territory War State attributes. To compensate for the trouble we have given you, we have prepared these amazing gifts for you!",0,44785)
												SetPlayerVar(-1,3473,3)
											endif
										endif
										if $num < 20
											if $num >= 10
												SendMail(-1,"Territory War State Compensation","Territory War State is removed, all players can learn the newly added Guild Skill. Afterwards, gain the passive skill which has attributes that are similar to the original Territory War State attributes. To compensate for the trouble we have given you, we have prepared these amazing gifts for you!",0,44786)
												SetPlayerVar(-1,3473,4)
											endif
										endif
										if $num < 10
											if $num > 0
												SendMail(-1,"Territory War State Compensation","Territory War State is removed, all players can learn the newly added Guild Skill. Afterwards, gain the passive skill which has attributes that are similar to the original Territory War State attributes. To compensate for the trouble we have given you, we have prepared these amazing gifts for you!",0,44787)
												SetPlayerVar(-1,3473,5)
											endif
										endif
								endif
							endif
						endif
					endif
				endif
			endif
		SetPlayerVar(-1,366,1)
}


