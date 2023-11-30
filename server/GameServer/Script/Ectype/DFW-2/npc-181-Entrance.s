	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-12
	//		Author:???
	//		TaskName:????2?
	//		TaskID:mapid = 568
	//****************************************

	function OnRequest(){

		$ectype_id = GetEctypeID(-1,568)
		if $ectype_id > 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif

	}

//????®????¯ - 3???
	function OnOption0(){

		$week = GetSystemTime( "week" )
		if $week != 6
//			BC("dialogbox","player",-1,"The Pursuit of Rapture event is only available in realm 6 on Saturday (14:00-18:00).")
//			return
		endif
		$time = GetSystemTime( "hour" )
		if $time < 14
//			BC("dialogbox","player",-1,"The Pursuit of Rapture event is only available in realm 6 on Saturday (14:00-18:00).")
//			return
		endif
		if $time > 17
//			BC("dialogbox","player",-1,"The Pursuit of Rapture event is only available in realm 6 on Saturday (14:00-18:00).")
//			return
		endif

		$player_id = GetPlayerID()

		$team_headerID = GetTeamHeaderID(-1)
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can enter you into the instance!" )
			return
		endif

		$team_count = GetTeamMemberCount(-1)
		if $team_count < 3
//			BC( "dialogbox", "player", -1, "You must have at least 3 party members to enter the instance!" )
//			return
		endif

		$size = GetTeamAreaSize(-1)
		if $size > 15
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif

		//??
		//??????? 3576
		$weeknow = GetNowWeek()
		$cid = 0
		$totallevel = 0
		$totallevel_F = 0
		$team_count = 0
		while $cid < 6
			$teamplayer_id = GetTeamMemberID($player_id,$cid)
			$cid += 1
			if $teamplayer_id > 0
				$temp_level = GetPlayerInfo($teamplayer_id,"level")
				if $temp_level < 30
					#name = GetPlayerInfo($teamplayer_id,"name")
					BC("dialogbox","player",$player_id,"The player, ",#name," is not LV30 yet. They cannot enter this instance yet.")
					return
				endif
				$last_week = GetPlayerVar($teamplayer_id,3576)
				if $last_week == $weeknow
					#name = GetPlayerInfo $teamplayer_id,"name")
					BC("dialogbox","player",$player_id,"The player, ",#name,", has already entered the Pursuit of Rapture this week!" )
					return
				endif
				$temp_level_F = GetPlayerInfo($teamplayer_id,"level")
				$totallevel += $temp_level
				$totallevel_F += $temp_level_F
				$team_count += 1
			endif
		endwhile
		$a_level = $totallevel / $team_count
		$a_level_F = $totallevel_F / $team_countg

		//??
		//????UID 3841
		//??????? 3576
		//367 ?????? 3919 ??????
		$is_success = FlyToEctype(-1,568,16,112)
		if $is_success > 0
			SetPlayerActLog(-1,43,0)
			SetPlayerVar(-1,3841,$is_success)
			SetPlayerVar(-1,3576,$weeknow)
			$sysTeam = GetServerVar(367)
			$sysTeam += 1
			if $sysTeam > 60000
				$sysTeam = 1
			endif
			SetServerVar(367,$sysTeam)
//			SetPlayerVar(-1,3919,$sysTeam)???????
			$ectype_id = GetEctypeID(-1,568)
			StartEctypeTimer($ectype_id,1)
			SetEctypeVar($ectype_id,0,$sysTeam)
			SetEctypeVar($ectype_id,2,$a_level)
			SetEctypeVar($ectype_id,3,$a_level_F)
		else
			BC("messagebox","player",-1,"System error! Failed to enter!")
			return
		endif

		$cid = 0
		while $cid < 6
			$teamplayer_id = GetTeamMemberID($player_id,$cid)
			$cid += 1
			if $teamplayer_id > 0
				if $teamplayer_id != $team_headerID
					$is_success = FlyToEctype($teamplayer_id,568,16,112)
					if $is_success > 0
						SetPlayerActLog($teamplayer_id,43,0)
						SetPlayerVar($teamplayer_id,3841,$is_success)
						SetPlayerVar($teamplayer_id,3576,$weeknow)
//						SetPlayerVar($teamplayer_id,3919,$sysTeam)???????
					endif
				endif
			endif
		endwhile



		//??
		$history = GetGlobalVar(909)
		$history = $history + $team_count
		SetGlobalVar(909,$history)


	}


	function OnOption1(){

		$week = GetSystemTime( "week" )

		$ectype_id = GetEctypeID(-1,568)

			$UID = GetEctypeUniqueID(-1,568)
			$playervar = GetPlayerVar(-1,3841)
			if $UID == $playervar
				$is_success = FlyToEctype(-1,568,16,112)
				if $is_success > 0
					BC("screen","player",-1,"You have returned to the Pursuit of Rapture!")
				else
					BC("messagebox","player",-1,"System error! Failed to enter!")
					return
				endif
			else
				$temp_level = GetPlayerInfo(-1,"level")
				if $temp_level < 30
					BC("dialogbox","player",-1," is not LV30 yet. They cannot enter this instance yet.")
					return
				endif
				$last_week = GetPlayerVar(-1,3576)
				if $last_week == $weeknow
					BC("dialogbox","player",-1,"You've already entered the Pursuit of Rapture this week!" )
					return
				endif
				$getectyevar = GetEctypeVar($ectype_id,1)
				if $getectyevar >= 9
					BC("dialogbox","player",-1,"The Party has reached the destination already. Cannot enter again!")
					return
				endif
				$is_success = FlyToEctype(-1,568,16,112)
				if $is_success > 0
					SetPlayerActLog(-1,43,0)
					SetPlayerVar(-1,3841,$is_success)
					SetPlayerVar(-1,3576,$weeknow)
					BC("screen","player",-1,"You have entered the Pursuit of Rapture! Good luck!")
					//??????
					call ResetTeamLevel()
				else
					BC("messagebox","player",-1,"System error! Failed to enter!")
					return
				endif
			endif







	}

	function ResetTeamLevel(){

//--??????
		$ectype_id = GetCurEctypeID()
		$cid = 0
		$totallevel = 0
		$totallevel_F = 0
		$team_count = 0
		while $cid < 6
			$playerid = GetPlayerID()
			$teamplayer_id = GetTeamMemberID($player_id,$cid)
			$cid += 1
			if $teamplayer_id > 0
				$temp_level = GetPlayerInfo($teamplayer_id,"level")
				$temp_level_F = GetPlayerInfo($teamplayer_id,"level")
				$totallevel += $temp_level
				$totallevel_F += $temp_level_F
				$team_count += 1
			endif
		endwhile
		$a_level /= $team_count
		$a_level_F /= $team_count
		SetEctypeVar($ectype_id,2,$a_level)
		SetEctypeVar($ectype_id,3,$a_level_F)
//--????????

	}
