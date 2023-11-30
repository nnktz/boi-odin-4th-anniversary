	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/04
	//		Author:??
	//		TaskName:HD-shiliandongku-NPC3.s
	//		TaskID:?????????-????????????,?????????????????
	//
	//****************************************
	
	//??????
	function OnRequest(){
	//?????8??10???,?????12??2???,?????
		$week = GetSystemTime( "week" )
		if $week != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		$time = GetSystemTime( "hour" )
		if $time < 14
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $time > 17 
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		//??????????????
		$value = GetPlayerVar( -1, 3208 )
		if $value == 0
			DisableNpcOption(2)
			return
		endif
		
		//??????????
		if $today_time != $last_time
			DisableNpcOption(2)
			return
		endif
		
		$result = IsTaskAccept( -1, 4301 )
		if $result == 0
			DisableNpcOption(2)
			return
		endif

	}
	
	//??npc???????,
	function OnOption0(){
	//????????
		$week = GetSystemTime( "week" )
		if $week != 6
			BC( "chat", "player", -1, "Please come on Saturday." )
			return
		endif
		
		$time = GetSystemTime( "hour" )
		if $time < 14
			BC( "chat", "player", -1, "The event has not started yet." )
			return
		endif
		if $time > 17 
			BC( "chat", "player", -1, "The event has not started yet." )
			return
		endif
		
		
		//?????
		$team_count = GetTeamMemberCount(-1)
		//????????
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()

		//????????
		if $player_id != $team_headerID
			//??????,?????
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		if $team_count < 2
			BC( "dialogbox", "player", -1, "There must be 2 or more players in your party." )
			return
		endif
		
		$size = GetTeamAreaSize(-1)
		//?????????
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Some of your party members are too far away!" )
			return
		endif
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )

		//????????
		$today_time = GetSystemTime( "yday" )
		//???????0???????????
		$foul_player = 0
		
		if $teamplayer1_id != -1
			//????????????
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3612 )
			//????????????????,???
			if $player1_time == $today_time
				//??1????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer1_id, "name", )
				BC( "dialogbox", "player", -1, #name ,"You have finish your clean quest this week." )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer2_id != -1
			//????????????
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3612 )
			//????????????????,???
			if $player2_time == $today_time
				//??2????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer2_id, "name", )
				BC( "dialogbox", "player", -1, #name ,"You have finish your clean quest this week." )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer3_id != -1
			//????????????
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3612 )
			//????????????????,???
			if $player3_time == $today_time
				//??3????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer3_id, "name", )
				BC( "dialogbox", "player", -1, #name ,"You have finish your clean quest this week." )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer4_id != -1
			//????????????
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3612 )
			//????????????????,???
			if $player4_time == $today_time
				//??4????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer4_id, "name", )
				BC( "dialogbox", "player", -1, #name ,"You have finish your clean quest this week." )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer5_id != -1
			//????????????
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3612 )
			//????????????????,???
			if $player5_time == $today_time
				//??5????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer5_id, "name", )
				BC( "dialogbox", "player", -1, #name ,"You have finish your clean quest this week." )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		if $teamplayer6_id != -1
			//????????????
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3612 )
			//????????????????,???
			if $player6_time == $today_time
				//??6????????????,????????
				//?????????????,??????????????
				#name = GetPlayerInfo( $teamplayer6_id, "name", )
				BC( "dialogbox", "player", -1, #name ,"You have finish your clean quest this week." )
				//?????+1
				$foul_player += 1
			endif
		endif
		
		//??????????
		if $foul_player > 0
			//BC( "chat", "player", -1, "GUID:05454000012" )
			return
		endif
		
		//?????
		$total_level = 0
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )

			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif

			$total_level += $temp_level

		endif
		if $teamplayer2_id != -1
			BC( "chat", "player", -1, "4" )
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05454000015",$temp_level,"GUID:05454000016",$total_level)
		endif
		if $teamplayer3_id != -1
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05454000018",$temp_level,"GUID:05454000019",$total_level)
		endif
		if $teamplayer4_id != -1
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05454000021",$temp_level,"GUID:05454000022",$total_level)
		endif
		if $teamplayer5_id != -1
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif
			//????
			
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05454000024",$temp_level,"GUID:05454000025",$total_level)
		endif
		if $teamplayer6_id != -1
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 30
				//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
				//????
			
			endif
			$total_level += $temp_level
			//BC( "chat", "player", -1, "GUID:05454000027",$temp_level,"GUID:05454000028",$total_level)
		endif
		
		//????????
		$average_level = $total_level / $team_count
		//????????ID???.
		$map_id = 0
		$map_x = 0
		$map_y = 0
		$quest_id = 0
		$cavern = 0
		//????,????
		//$average_level = 35
		if $average_level < 30
			BC( "dialogbox", "player", -1, "Average level below 30,you can not enter")
			return
		endif
		
		if $average_level >= 30 
			if $average_level < 45
				//??30-45???
				//BC( "chat", "player", -1, "5" )
				$map_id = 130
				$map_x = 22
				$map_y = 44
				$quest_id = 4301
				$cavern = 1
			endif
		endif
		
		if $average_level >= 45 
			if $average_level < 60
				//??45-60???
				$map_id = 131
				$map_x = 22
				$map_y = 44
				$quest_id = 4301
				$cavern = 2
			endif
		endif
		
		if $average_level >= 60
			if $average_level < 75
				//??60-75???
				$map_id = 130
				$map_x = 82
				$map_y = 46
				$quest_id = 4301
				$cavern = 3
			endif
		endif
		
		if $average_level >= 75 
			if $average_level < 90
				//??75-90???
				$map_id = 131
				$map_x = 82
				$map_y = 46
				$quest_id = 4301
				$cavern = 4
			endif
		endif
		
		if $average_level >= 90 
			if $average_level < 105
				//??90-105???
				$map_id = 130
				$map_x = 24
				$map_y = 106
				$quest_id = 4301
				$cavern = 5
			endif
		endif
		if $average_level >= 105 
			if $average_level < 120
				//??105-120???
				$map_id = 131
				$map_x = 24
				$map_y = 106
				$quest_id = 4301
				$cavern = 6
			endif
		endif
		if $average_level >= 120
			if $average_level < 135
		//??120-135???
				$map_id = 130
				$map_x = 86
				$map_y = 106
				$quest_id = 4301
				$cavern = 7
			endif
		endif
		if $average_level >= 135 
		//????150????150???.??????????
			//if $average_level < 150
		//??135-150???
				$map_id = 130
				$map_x = 86
				$map_y = 106
				$quest_id = 4301
				$cavern = 8
			//endif
		endif
		//????????
		$pass_player_id = 0
		
		//????????????
		//????
		$players_count = GetServerVar(907)
		$players_count = $players_count + $team_count
		SetServerVar( 907, $players_count )  
		
		//?????????????,???????????,????????,?????????????
		//1???
		if $teamplayer1_id != -1
			//?????????????????????
			//BC( "chat", "player", -1, "6" )
			//????ID??????
			$pass_player_id = $teamplayer1_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask($teamplayer1_id, $quest_id)
			//BC( "chat", "player", -1, "GUID:05454000030" )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer1_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer1_id, 3612, $today_time )
					$result = SetPlayerVar( $teamplayer1_id, 3208, $cavern )
				else
					BC( "chat", "player", -1, "Teleport failed" )
				endif
			else
				BC( "chat", "player", -1, "N/A?????" )
			endif
		else
		endif
		
		
		//2???
		if $teamplayer2_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer2_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer2_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer2_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer2_id, 3612, $today_time )
					$result = SetPlayerVar( $teamplayer2_id, 3208, $cavern )
				else
				endif
			else
			endif
		else
		endif
		//3???
			
		if $teamplayer3_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer3_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer3_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer3_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer3_id, 3612, $today_time )
					$result = SetPlayerVar( $teamplayer3_id, 3208, $cavern )
				else
				endif
			else
			endif
		else
		endif
		
		//4???
		if $teamplayer4_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer4_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer4_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer4_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer4_id, 3612, $today_time )
					$result = SetPlayerVar( $teamplayer4_id, 3208, $cavern )
				else
				endif
			else
			endif
		else
		endif
		
		//5???	
		if $teamplayer5_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer5_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer5_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer5_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
					$result = SetPlayerVar( $teamplayer5_id, 3612, $today_time )
					$result = SetPlayerVar( $teamplayer5_id, 3208, $cavern )
				else
				endif
			else
			endif
		else
		endif
		//6???	
		if $teamplayer6_id != -1
			//?????????????????????
			//????ID??????
			$pass_player_id = $teamplayer6_id
			//????????????
			call SetTaskType()
			//??????????,???????
			$result = AcceptTask( $teamplayer6_id, $quest_id )
			//????????
			if $result == 0
				//????
				$result = FlyToMap( $teamplayer6_id, $map_id, $map_x, $map_y )
				//??????
				if $result == 0
				//??????????????????
				//?????????????
					$result = SetPlayerVar( $teamplayer6_id, 3612, $today_time )
					$result = SetPlayerVar( $teamplayer6_id, 3208, $cavern )
				else
				endif
			else
			endif
		else
		endif
	}
	
	//??NPC3????????,??????
	function OnOption1(){
	
		$week = GetSystemTime( "week" )
		if $week != 6
			BC( "dialogbox", "player", -1, "The event is ended." )
			return
		endif
		
		$time = GetSystemTime( "hour" )
		if $time < 14
			BC( "dialogbox", "player", -1, "The event is ended." )
			return
		endif
		if $time > 17 
			BC( "dialogbox", "player", -1, "The event is ended." )
			return
		endif
		
	//?????????????
		$value = GetPlayerVar( -1, 3208 )
		if $value == 0
			return
		endif
		
		//?????1
		if $value == 1
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finished the event." )
				return
			endif
			
			$map_id = 130
			$map_x = 22
			$map_y = 44
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		//?????2
		if $value == 2
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finished the event." )
				return
			endif
			$map_id = 131
			$map_x = 22
			$map_y = 44
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		//?????3
		if $value == 3
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finished the event." )
				return
			endif
			$map_id = 130
			$map_x = 82
			$map_y = 46
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		//?????4	
		if $value == 4
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finished the event." )
				return
			endif
			$map_id = 131
			$map_x = 82
			$map_y = 46
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		//?????5
		if $value == 5
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finished the event." )
				return
			endif
			$map_id = 130
			$map_x = 24
			$map_y = 106
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		
		if $value == 6
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finished the event." )
				return
			endif
			$map_id = 131
			$map_x = 24
			$map_y = 106
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		if $value == 7
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finished the event." )
				return
			endif
			$map_id = 130
			$map_x = 86
			$map_y = 106
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		
		if $value == 8
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finished the event." )
				return
			endif
			$map_id = 130
			$map_x = 86
			$map_y = 106
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		
	}
	
	
	
	//??NPC3????????,???????
	function OnOption2(){
	
		$today_time = GetSystemTime( "yday" )
		$last_time =  GetPlayerVar( -1, 3612 )
		
		if $today_time != $last_time
			BC( "dialogbox", "player", -1, "You have not joined the event." )
			return
		endif
		
		
		$value = GetPlayerVar( -1, 3208 )
		if $value == 0
			call ClearQuest()
			//FlyToMap( -1, 2, 64, 81 )
			BC( "dialogbox", "player", -1, "You can not have more." )
			return
		endif
		
		if $value == 1
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result == 0
				BC( "dialogbox", "player", -1, "You have not finished the Lost Ruins event, you may not get a Shovel." )
				return
			endif
		endif
		//?????2
		if $value == 2
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result == 0
				BC( "dialogbox", "player", -1, "You have not finished the Lost Ruins event, you may not get a Shovel." )
				return
			endif
		endif
		//?????3
		if $value == 3
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result == 0
				BC( "dialogbox", "player", -1, "You have not finished the Lost Ruins event, you may not get a Shovel." )
				return
			endif
		endif
		//?????4	
		if $value == 4
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result == 0
				BC( "dialogbox", "player", -1, "You have not finished the Lost Ruins event, you may not get a Shovel." )
				return
			endif
		endif
		//?????5
		if $value == 5
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result == 0
				BC( "dialogbox", "player", -1, "You have not finished the Lost Ruins event, you may not get a Shovel." )
				return
			endif
		endif
		
		if $value == 6
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result == 0
				BC( "dialogbox", "player", -1, "You have not finished the Lost Ruins event, you may not get a Shovel." )
				return
			endif
		endif
		if $value == 7
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result == 0
				BC( "dialogbox", "player", -1, "You have not finished the Lost Ruins event, you may not get a Shovel." )
				return
			endif
		endif
		
		if $value == 8
			//?????????????
			$result = IsTaskAccept( -1, 4301 )
			if $result == 0
				BC( "dialogbox", "player", -1, "You have not finished the Lost Ruins event, you may not get a Shovel." )
				return
			endif
		endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You have not enough space in your bag,please fix your bag." )
			return
		endif
			
		//????????,????????,???????
		AddPlayerInfo( -1, "item", 63170, 20)
		SetPlayerVar( -1, 3208 , 0)
	}
	
	
	
	//??NPC3????????,????
	function OnOption3(){
	
		FlyToMap(-1, 475, 79, 49 ,1)
	}
	
	
	
	function ClearQuest(){
		
		CancelTask( -1, 4301 )
	}
	
	//???????????
	function SetTaskType(){
		
		CancelTask ($pass_player_id, 4301 )
	
	}