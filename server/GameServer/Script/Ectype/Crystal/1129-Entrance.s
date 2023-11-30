 //****************************
 //  Copyright:PERFECT WORLD
 //  Modified:2013.2.25
 //  Author:???
 //  TaskName: ????????
 //****************************


	//????													573
	//???????                  	4205



	//option0  ??????
	//option1  ??????
	//option2  ????
                       


	function OnRequest(){

		//?????????????
		$ectype_ID = GetEctypeID( -1 , 573 )

		$Line = GetServerLineID()
		if $Line != 1
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif
//
//		//????????
//		$NowWeek = GetSystemTime("week")
//		if $NowWeek != 7
//			DisableNpcOption(0)
//			DisableNpcOption(1)
//			DisableNpcOption(2)
//		endif
		$week = GetNowWeek()
		$lastweek = GetPlayerVar(-1,4205)
		if $week == $lastweek 
			DisableNpcOption(0)
			DisableNpcOption(1)

		endif

		if $ectype_ID > 0
			//?????ID?,??????
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			//?ID,??????
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif

	}


	//????
	function OnOption0(){

		$ectype_ID = GetEctypeID(-1, 573)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		$week = GetNowWeek()
		$lastweek = GetPlayerVar(-1,4205)
		//????
		if $ectype_ID > 0
			ReleaseEctype(-1,573)
		endif

		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, you are not the party leader. Please create a party to enter!" )
			return
		endif
		//???????
		$whether = GetPlayerVar(-1,4205)
		$week = GetNowWeek()
		if $whether == $week
			BC( "dialogbox", "player", -1, "The Quartz Grotto is open only once per  week. The gateway is currently recharging!" )
			return
		endif
		//??????
		$level = GetPlayerInfo(-1,"level")
		if $level < 90
			BC( "dialogbox", "player", -1, "You can't enter Quartz Grotto until you reach LV90. Any earlier would be suicide!" )
			return
		endif
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count > 1
			BC( "dialogbox", "player", -1, "You can't enter the Solo instance with more than one player!" )
			return
		endif

		//-------------------????----------------------------------

		if $player_id == $team_headerID
			$map_x = 134
			$map_y = 163
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_success = FlyToEctype( $team_headerID, 573, $map_x, $map_y)
//			BC( "dialogbox", "player", -1, "",$is_success)
			if $is_success > 0
				SetPlayerActLog($team_headerID,61,0)
				SetPlayerVar( $team_headerID , 3362, 1)
				SetPlayerVar( $team_headerID , 4205, $week)
				$ectype_ID = GetEctypeID(-1, 573)
				SetPlayerVar( $team_headerID , 4102, $is_success)
				//????
				 SetPlayerVar($team_headerID,3472,0)
//?????
				SetEctypeVar($ectype_ID,0,1)
				SetEctypeVar($ectype_ID,9,1)
				//??????
				CancelTask ( $team_headerID, 1912 )								
				CancelTask ( $team_headerID, 1913 )			
				//-----------------
			//	SetPlayerVar($team_headerID,3595,0)

				$field = GetFieldLevel(-1)
				SetEctypeVar($ectype_ID,5,$level)
				if $field > 0
				SetEctypeVar($ectype_ID,6,$field)
				endif
				StartEctypeTimer($ectype_ID, 0)
				BC( "screen", "player", $team_headerID, "You have entered the mysterious Quartz Grotto!")
	//			$last_week = GetPlayerVar($team_headerID,4205)
	//			$weeknow = GetNowWeek()
				BC( "chat", "player", $team_headerID, "You have entered the mysterious Quartz Grotto!" )
			endif
		endif

		//-------------------????----------------------------------

		//??????????
		$history = GetGlobalVar( 911 )
		$history = $history + 1
		SetGlobalVar( 911 , $history )

	}

	function OnOption1(){

		$ectype_ID = GetEctypeID(-1, 573)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		$week = GetNowWeek()
		$lastweek = GetPlayerVar(-1,4205)

		//????
		if $ectype_ID > 0
			ReleaseEctype(-1,573)
		endif

		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry! You are not the party leader!" )
			return
		endif
		//???????
		$whether = GetPlayerVar(-1,4205)
		$week = GetNowWeek()
		if $whether == $week
			BC( "dialogbox", "player", -1, "The Quartz Grotto is open only once per  week. The gateway is currently recharging!" )
			return
		endif
		//??????



		$team_count = GetTeamMemberCount(-1)
//?????????------
		//????????
	if $team_count < 3
		BC( "dialogbox", "player", -1, "You must have at least 3 party members to enter the instance!" )
		return
	endif
	
	$size = GetTeamAreaSize(-1)
	
	if $size > 10
		//?????????????
		BC( "dialogbox", "player", -1, "Your party members are too far away!" )
		return
	endif


		//???????ID,??????ID?-1
		$today_time = GetSystemTime( "yday" )
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			//-----------------------------
			//????????????1????
			//-------------------------------------------------------------------------------------1?
			if $teamplayer_id != -1

				//?????
					$level = GetPlayerInfo($teamplayer_id,"level")
					if $level < 90
						BC( "dialogbox", "player", -1, "A player in your party is below LV90." )
						return
					endif
		 	//???????
				$player_time = GetPlayerVar( $teamplayer_id , 4205 )
				//????????????????,???
				if $player_time == $week
					#name = GetPlayerInfo( $teamplayer_id , "name" )
					BC( "chat", "player", -1, #name ,"You can only enter Quartz Grotto once per week." )
					BC( "dialogbox", "player", -1,"A member of your Party has already entered the Quartz Grotto instance this week. Unable to enter." )
					return
				endif

			endif
		endwhile

		//-------------------????----------------------------------
		$rand = RandomNumber(1,2)
		//--------ceshiyong
		//$rand = 2
		//--------ceshiyong
		if $player_id == $team_headerID
			if $rand == 1
			$map_x = 71
			$map_y = 165
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_success = FlyToEctype( $team_headerID, 573, $map_x, $map_y)
			if $is_success > 0
				SetPlayerActLog($team_headerID,61,1)
				SetPlayerVar( $team_headerID , 3362, 2)
				SetPlayerVar( $team_headerID , 4205, $week)
				SetPlayerVar( $team_headerID , 4102, $is_success)
				$ectype_ID = GetEctypeID(-1, 573)
				//?????
				SetEctypeVar($ectype_ID,0,2)
//				SetPlayerVar($team_headerID,3595,1)
				SetEctypeVar($ectype_ID,9,$team_count)
				//????
				 SetPlayerVar($team_headerID,3472,0)
				//??????
				CancelTask ( $team_headerID, 1912 )								
				CancelTask ( $team_headerID, 1913 )			
				//-----------------
				StartEctypeTimer($ectype_ID, 0)
				BC( "screen", "player", $team_headerID, "You have entered the mysterious Quartz Grotto!")
				BC( "chat", "player", $team_headerID, "You have entered the mysterious Quartz Grotto!" )
			endif
			endif
			if $rand == 2
			$map_x = 99
			$map_y = 237
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_success = FlyToEctype( $team_headerID, 573, $map_x, $map_y)
			if $is_success > 0
				SetPlayerActLog($team_headerID,61,2)
				SetPlayerVar( $team_headerID , 3362, 3)
				SetPlayerVar( $team_headerID , 4205, $week)  
				SetPlayerVar( $team_headerID , 4102, $is_success)
//				SetPlayerVar($team_headerID,3595,2)
				SetEctypeVar($ectype_ID,9,$team_count)
				$ectype_ID = GetEctypeID(-1, 573)
				//?????
				//????
				 SetPlayerVar($team_headerID,3472,0)
				//??????
				CancelTask ( $team_headerID, 1912 )								
				CancelTask ( $team_headerID, 1913 )			
				//-----------------
				SetEctypeVar($ectype_ID,0,3)
				StartEctypeTimer($ectype_ID, 0)
				BC( "screen", "player", $team_headerID, "You have entered the mysterious Quartz Grotto!")
				BC( "chat", "player", $team_headerID, "You have entered the mysterious Quartz Grotto!" )
			endif
			endif
		endif

		$n2 = 0
		while $n2 < 6

			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			$level = GetPlayerInfo($teamplayer_id,"level")
			$field = GetFieldLevel($teamplayer_id)
			$var5 = GetEctypeVar($ectype_ID,5)
			$var6 = GetEctypeVar($ectype_ID,6)
			if $level > $var5
				SetEctypeVar($ectype_ID,5,$level)
			endif
			if $field > $var6
				SetEctypeVar($ectype_ID,6,$field)
			endif
			//????,6??????
			if $rand == 1
				if $teamplayer_id != -1
					if $teamplayer_id != $team_headerID
						$map_x = 71
						$map_y = 165
						$map_x *= 100
						$map_x /= 256
						$map_y *= 100
						$map_y /= 256
						$is_suc = FlyToEctype( $teamplayer_id, 573, $map_x, $map_y)
						if $is_suc > 0
							SetPlayerActLog($teamplayer_id,61,1)
							SetPlayerVar( $teamplayer_id , 3362, 2)
//							SetPlayerVar($teamplayer_id,3595,1)
							SetPlayerVar( $teamplayer_id , 4205, $week)
							SetPlayerVar( $teamplayer_id , 4102, $is_suc)
							$ectype_ID = GetEctypeID(-1, 573)
							//????
						 SetPlayerVar($teamplayer_id,3472,0)
							//??????
							CancelTask ( $teamplayer_id, 1912 )								
							CancelTask ( $teamplayer_id, 1913 )			
							//-----------------
							BC( "screen", "player", $teamplayer_id, "You have entered the mysterious Quartz Grotto!")
						else
							BC( "dialogbox", "player", -1, "Failed to create instance, try again later or change realm." )
						endif
					endif
				endif
			endif

			if $rand == 2
				if $teamplayer_id != -1
					if $teamplayer_id != $team_headerID
						$map_x = 99
						$map_y = 237
						$map_x *= 100
						$map_x /= 256
						$map_y *= 100
						$map_y /= 256
						$is_suc = FlyToEctype( $teamplayer_id, 573, $map_x, $map_y)
						if $is_suc > 0
							SetPlayerActLog($teamplayer_id,61,2)
							SetPlayerVar( $teamplayer_id , 3362, 3)
							SetPlayerVar( $teamplayer_id , 4205, $week)  
							SetPlayerVar( $teamplayer_id , 4102, $is_suc)  
							$ectype_ID = GetEctypeID(-1, 573)
//							SetPlayerVar($teamplayer_id,3595,2)
							SetPlayerVar($teamplayer_id,3472,0)
							//??????
							CancelTask ( $teamplayer_id, 1912 )								
							CancelTask ( $teamplayer_id, 1913 )			
							//-----------------
							BC( "screen", "player", $teamplayer_id, "You have entered the mysterious Quartz Grotto!")
						else
							BC( "dialogbox", "player", -1, "Failed to create instance, try again later or change realm." )
						endif
					endif
				endif

			endif
		endwhile

		//-------------------????----------------------------------


		//??????????
		$history = GetGlobalVar( 911 )
		$history = $history + $team_count
		SetGlobalVar( 911 , $history )


	}

	//???????????
	function OnOption2(){

		$ectype_ID = GetEctypeID( -1 , 573 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1 , 573 )
		$player_number = GetMapPlayerCount($ectype_ID)
		$week = GetNowWeek()
		$lastweek = GetPlayerVar(-1,4205)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "The Instance is full, unable to enter!" )
			return
		endif
		//??????
		$level = GetPlayerInfo(-1,"level")
			if $level < 90
				BC( "dialogbox", "player", -1, "A player in your party is below LV90." )
				return
			endif
		//-----------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			//?????????,???????>=1 ???;???????????,???,?? ??+1
			$Player_UID = GetPlayerVar( -1, 4102 )
			//??????????????
			if $Player_UID == $ectype_UID
				//???????,?????
			else
				//????????
			//-----------------------------------------------------------------------------------
				if $lastweek == $week	
					BC( "dialogbox", "player", -1, "You've already entered the Quartz Grotto instance this week, you can't enter a second time!" )
					return
				endif
			endif
		else
			//???????,??
			return
		endif
		//??????
		$ectype_ID = GetEctypeID(-1, 573)
		//??????
		$var = GetEctypeVar($ectype_ID,0)
		if $var == 1
			$map_x = 134
			$map_y = 163
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_succeed = FlyToEctype( -1 , 573, $map_x, $map_y)
		endif
		if $var == 2
			$map_x = 71
			$map_y = 165
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_succeed = FlyToEctype( -1 , 573, $map_x, $map_y)
		endif
		if $var == 21
			$map_x = 71
			$map_y = 165
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_succeed = FlyToEctype( -1 , 573, $map_x, $map_y)
		endif
		if $var == 22
			$map_x = 71
			$map_y = 165
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_succeed = FlyToEctype( -1 , 573, $map_x, $map_y)
		endif
		if $var == 3
			$map_x = 99
			$map_y = 237
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_succeed = FlyToEctype( -1 , 573, $map_x, $map_y)
		endif
		if $var == 31
			$map_x = 99
			$map_y = 237
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_succeed = FlyToEctype( -1 , 573, $map_x, $map_y)
		endif
		if $var == 32
			$map_x = 99
			$map_y = 237
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_succeed = FlyToEctype( -1 , 573, $map_x, $map_y)
		endif
//-------------------------
	
//-------------------------

		if $is_succeed > 0
			//??????
			$Player_UID = GetPlayerVar( -1 , 4102 )
			//??????????????
			if $Player_UID == $ectype_UID
				//?????,?????
				BC( "screen", "player", -1, "You have returned to the Quartz Grotto instance!" )
			else
				//?????????????????,????????????,?????????

				SetPlayerVar( -1 , 4102 , $ectype_UID )
				$lastweek = GetPlayerVar(-1,4205)
				$weeknow = GetNowWeek()	
				if $lastweek != $weeknow
					SetPlayerVar(-1,4205,$weeknow)
				endif
				BC( "screen", "player", -1, "You have entered a new Quartz Grotto instance!" )
				SetPlayerVar($teamplayer_id,3472,0)
				//??????
				CancelTask ( -1, 1912 )								
				CancelTask ( -1, 1913 )			
				//-----------------????-------------------------
				$var = GetEctypeVar($ectype_ID,0)
				if $var == 1
					SetPlayerActLog(-1,61,0)
					SetPlayerVar( -1 , 3362, 1)
				endif
				if $var == 2
					SetPlayerActLog(-1,61,1)
					SetPlayerVar( -1 , 3362, 2)
				endif
				if $var == 21
					SetPlayerActLog(-1,61,1)
					SetPlayerVar( -1 , 3362, 2)
				endif
				if $var == 22
					SetPlayerActLog(-1,61,1)
					SetPlayerVar( -1 , 3362, 2)
				endif
				if $var == 3
					SetPlayerActLog(-1,61,2)
					SetPlayerVar( -1 , 3362, 3)
				endif
				if $var == 31
					SetPlayerActLog(-1,61,2)
					SetPlayerVar( -1 , 3362, 3)
				endif
				if $var == 32
					SetPlayerActLog(-1,61,2)
					SetPlayerVar( -1 , 3362, 3)
				endif
				
			//-----------------????-------------------------
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
//-------------------------
	}

	function OnOption3(){
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		$week = GetNowWeek()
		$lastweek = GetPlayerVar(-1,4205)
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
			return
		endif

		$ectype_ID = GetEctypeID( -1 ,573 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance. Party members are still inside!" )
			return
		endif

		$revalue = ReleaseEctype( -1, 573 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "The Quartz Grotto instance has been reset!" )
			BC( "dialogbox", "player", -1, "The Quartz Grotto instance has been reset!" )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
	}