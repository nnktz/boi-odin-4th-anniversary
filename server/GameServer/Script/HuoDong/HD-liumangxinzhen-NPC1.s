	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/05
	//		Author:?? ???
	//		TaskName:HD-liumangxinzhen-NPC1.s
	//		TaskID:????-NPC?????,?????????,???????,??????,????
	//
	//****************************************
	
	//??????
	function OnRequest(){
		
		$time_hour = GetSystemTime( "hour" )
		$time_minute = GetSystemTime( "minute")
		$level = GetPlayerInfo(-1,"level")
		$Line = GetServerLineID()
		$is_line = $Line % 2
		//????????
		if $is_line != 0
			DisableNpcOption(0)
		endif
		//if $time_hour < 20 
		//	if $time_hour > 13
		//		DisableNpcOption(0)
		//	endif
		//endif
		//if $time_hour > 21
		//	DisableNpcOption(0)
	//	endif
		//if $time_hour < 12
		//	DisableNpcOption(0)
		//endif
		//if $time_hour == 12
		//	if $time_minute < 30
		//		DisableNpcOption(0)
		//	endif
		//endif
		//if $time_hour == 20
		//	if $time_minute < 30
		//		DisableNpcOption(0)
		//	endif
		//endif
		if $level < 20
			DisableNpcOption(0)
		endif	
		$result = IsTaskAccept( -1 , 956 )
		if $result != 0
			DisableNpcOption(1)
		endif
		$last_time =  GetPlayerVar( -1, 3605 )
		$today_time = GetSystemTime( "yday" )
		if $today_time == $last_time
			DisableNpcOption(0)
		endif
//---------------7??9???---------------------------------
//		if $time_hour < 19
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//		endif
//		if $time_hour > 21
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//		endif
//		if $Line == 1
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//		endif
//		if $Line == 2
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//		endif
//		if $Line == 3
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//		endif
//		if $Line == 4
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//		endif
//		if $Line == 5
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//		endif
//		if $Line == 7
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//		endif
//		
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a > 0
//			DisableNpcOption(5)
//		else
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//		endif
//		
//		$yday = GetSystemTime( "yday" )
//		$time = GetPlayerVar( -1 , 3731 )
//		if $time == $yday
//			DisableNpcOption(3)
//		endif
//		$time = GetPlayerVar( -1 , 3733 )
//		if $yday == $time
//			DisableNpcOption(4)
//		endif
//--------------201306????---------------------//
	$result = IsTaskAccept( -1, 1934 )
	if $result != 0
	  DisableNpcOption(2)     
	endif
	//$result = GetPlayerVar(-1,402)
	//if $result != 0
	//  DisableNpcOption(2)     
	//endif
	$result = GetPlayerInfo(-1,"item",12886)
	if $result > 0 
		DisableNpcOption(2)     
	endif
		
	}
	//??????
	function OnOption0(){
	
		//???????
		$level = GetPlayerInfo(-1,"level")
		if $level < 20
			BC( "dialogbox", "player", -1, "Please come above level 20." )
			return
		endif		
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
			return
		endif
		$last_time =  GetPlayerVar( -1, 3605 )
		$today_time = GetSystemTime( "yday" )
		
		if $today_time == $last_time
			BC( "dialogbox", "player", -1, "You have done it today." )
			return
		endif
		//?????????
		SubPlayerInfo( -1, "item", 12159,-1)
		SubPlayerInfo( -1, "item", 12160,-1)
		SubPlayerInfo( -1, "item", 12161,-1)
		SubPlayerInfo( -1, "item", 12162,-1)
		SubPlayerInfo( -1, "item", 12163,-1)
		SubPlayerInfo( -1, "item", 12164,-1)
		SubPlayerInfo( -1, "item", 12165,-1)
		//?????????
		CancelTask( -1, 920)
		CancelTask( -1, 921)
		CancelTask( -1, 922)
		CancelTask( -1, 923)
		CancelTask( -1, 924)
		CancelTask( -1, 925)
		CancelTask( -1, 952)
		CancelTask( -1, 953)
		CancelTask( -1, 954)
		CancelTask( -1, 955)
		//-------------------------------
		CancelTask( -1, 946)
		CancelTask( -1, 947)
		CancelTask( -1, 948)
		CancelTask( -1, 949)
		CancelTask( -1, 950)
		CancelTask( -1, 951)
		CancelTask( -1, 956)
		//??
		//???????
		if $level < 30
			$result = AcceptTask( -1, 920 )
			if $result != 0
				return
			endif
		endif
		if $level < 45
			if $level >= 30
				$result = AcceptTask( -1, 921 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 60
			if $level >= 45
				$result = AcceptTask( -1, 922 )
				if $result != 0
					return
				endif
			endif
		endif	
		if $level < 75
			if $level >= 60
				$result = AcceptTask( -1, 923 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 90
			if $level >= 75
				$result = AcceptTask( -1, 924 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 105
			if $level >= 90
				$result = AcceptTask( -1, 925 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 120
			if $level >= 105
				$result = AcceptTask( -1, 952 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 135
			if $level >= 120
				$result = AcceptTask( -1, 953 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 150
			if $level >= 135
				$result = AcceptTask( -1, 954 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level >= 150
			$result = AcceptTask( -1, 955 )
			if $result != 0
				return
			endif
		endif
        		
		//???????????????
		SetPlayerVar( -1, 3605 ,$today_time)
		//??-START
			$TJ_join_number = GetGlobalVar(902)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(902 , $TJ_join_number)
		//??-END     		
		
		SetPlayerActLog(-1,17,0)
		
		//??????????????
		//----------------------------------------------
		SetTaskNotActive( -1, 946)
		SetTaskNotActive( -1, 947)
		SetTaskNotActive( -1, 948)
		SetTaskNotActive( -1, 949)
		SetTaskNotActive( -1, 950)
		SetTaskNotActive( -1, 951)
		SetTaskNotActive( -1, 956)
		//??????????
		SetPlayerVar(-1,2,0)
		SetPlayerVar(-1,3,0)
		SetPlayerVar(-1,4,0)
		SetPlayerVar(-1,5,0)
		SetPlayerVar(-1,6,0)
		SetPlayerVar(-1,7,0)
	}


 //?????
	function OnOption1(){
		
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		if $teamplayer1_id != -1
			$player_stone = GetPlayerVar($teamplayer1_id ,3202)
			#name_1 = GetPlayerInfo ($teamplayer1_id ,"name" )
			$result = IsTaskAccept( $teamplayer1_id , 956 )
			//?????????
			if $result != 0
				#player1_color = "None."
			else
				if 	$player_stone == 1
					#player1_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000006" )
				endif
				if 	$player_stone == 2
					#player1_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000009" )
				endif
				if 	$player_stone == 3
					#player1_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000012" )
				endif
				if 	$player_stone == 4
					#player1_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000015" )
				endif
			endif
			$is_complate_1 = GetPlayerVar($teamplayer1_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer1_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer1_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer1_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer1_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer1_id ,7)
			
			#player1_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player1_iscomplate = "already."
			endif 
			         			
		endif

		if $teamplayer2_id != -1
			$player_stone = GetPlayerVar($teamplayer2_id ,3202)
			#name_2 = GetPlayerInfo ($teamplayer2_id ,"name" )
			$result = IsTaskAccept( $teamplayer2_id , 956 )
			//?????????
			if $result != 0
				#player2_color = "None."
				return
			else
				if 	$player_stone == 1
					#player2_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000026" )
				endif
				if 	$player_stone == 2
					#player2_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000029" )
				endif
				if 	$player_stone == 3
					#player2_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000032" )
				endif
				if 	$player_stone == 4
					#player2_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000035" )
				endif
			endif
			$is_complate_1 = GetPlayerVar($teamplayer2_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer2_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer2_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer2_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer2_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer2_id ,7)
			
			#player2_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player2_iscomplate = "already."
			endif         			
		endif
		
		if $teamplayer3_id != -1
			$player_stone = GetPlayerVar($teamplayer3_id ,3202)
			#name_3 = GetPlayerInfo ($teamplayer3_id ,"name" )
			$result = IsTaskAccept( $teamplayer3_id , 956 )
			//?????????
			if $result != 0
				#player3_color = "None."
			else
				if 	$player_stone == 1
					#player3_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000046" )
				endif
				if 	$player_stone == 2
					#player3_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000049" )
				endif
				if 	$player_stone == 3
					#player3_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000052" )
				endif
				if 	$player_stone == 4
					#player3_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000055" )
				endif
			endif

            $is_complate_1 = GetPlayerVar($teamplayer3_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer3_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer3_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer3_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer3_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer3_id ,7)

			#player3_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player3_iscomplate = "already."
			endif         			
		endif
		
		if $teamplayer4_id != -1
			$player_stone = GetPlayerVar($teamplayer4_id ,3202)
			#name_4 = GetPlayerInfo ($teamplayer4_id ,"name" )
			$result = IsTaskAccept( $teamplayer4_id , 956 )
			//?????????
			if $result != 0
				#player4_color = "None."
			else
				if 	$player_stone == 1
					#player4_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000066" )
				endif
				if 	$player_stone == 2
					#player4_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000069" )
				endif
				if 	$player_stone == 3
					#player4_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000072" )
				endif
				if 	$player_stone == 4
					#player4_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000075" )
				endif
			endif
	   		$is_complate_1 = GetPlayerVar($teamplayer4_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer4_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer4_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer4_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer4_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer4_id ,7)

			#player4_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player4_iscomplate = "already."
			endif
			     			
		endif
	
		if $teamplayer5_id != -1
			$player_stone = GetPlayerVar($teamplayer5_id ,3202)
			#name_5 = GetPlayerInfo ($teamplayer5_id ,"name" )
			$result = IsTaskAccept( $teamplayer5_id , 956 )
			//?????????
			if $result != 0
				#player5_color = "None."
			else
				if 	$player_stone == 1
					#player5_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000086" )
				endif
				if 	$player_stone == 2
					#player5_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000089" )
				endif
				if 	$player_stone == 3
					#player5_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000092" )
				endif
				if 	$player_stone == 4
					#player5_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000095" )
				endif
			endif

            $is_complate_1 = GetPlayerVar($teamplayer5_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer5_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer5_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer5_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer5_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer5_id ,7)

			#player5_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player5_iscomplate = "already."
			endif
		endif
		
		if $teamplayer6_id != -1
			$player_stone = GetPlayerVar($teamplayer6_id ,3202)
			#name_6 = GetPlayerInfo ($teamplayer6_id ,"name" )
			$result = IsTaskAccept( $teamplayer6_id , 956 )
			//?????????
			if $result != 0
				#player6_color = "None."
			else
				if 	$player_stone == 1
					#player6_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000106" )
				endif
				if 	$player_stone == 2
					#player6_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000109" )
				endif
				if 	$player_stone == 3
					#player6_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000112" )
				endif
				if 	$player_stone == 4
					#player6_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05319000115" )
				endif
			endif

            $is_complate_1 = GetPlayerVar($teamplayer6_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer6_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer6_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer6_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer6_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer6_id ,7)

			#player6_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player6_iscomplate = "already."
			endif
		endif

		$team_count = GetTeamMemberCount(-1)
		    		
		if $team_count == 1      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power." )
        endif
		if $team_count == 2      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power." )
        endif
		if $team_count == 3      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power\n","The hero ",#name_3 ,"yes." , #player3_color , "Gem" ,#player3_iscomplate,"has released power.")
        endif
		if $team_count == 4      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power\n","The hero ",#name_3 ,"yes." , #player3_color , "Gem" ,#player3_iscomplate,"has released power\n","The hero ",#name_4 ,"yes." , #player4_color , "gem." ,#player4_iscomplate,"has released power." )
        endif
		if $team_count == 5      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power\n","The hero ",#name_3 ,"yes." , #player3_color , "Gem" ,#player3_iscomplate,"has released power\n","The hero ",#name_4 ,"yes." , #player4_color , "gem." ,#player4_iscomplate,"has released power.","The hero ",#name_5 ,"yes." , #player5_color , "gem." ,#player5_iscomplate,"has released power.")
        endif
		if $team_count == 6      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power\n","The hero ",#name_3 ,"yes." , #player3_color , "Gem" ,#player3_iscomplate,"has released power\n","The hero ",#name_4 ,"yes." , #player4_color , "gem." ,#player4_iscomplate,"has released power\n","The hero ",#name_5 ,"yes." , #player5_color , "gem." ,#player5_iscomplate,"has released power\n","The hero ",#name_6 ,"yes." , #player6_color , "gem." ,#player6_iscomplate,"has released power\n" )
        endif      		


	}  
	//--------------201306????---------------------START
	function OnOption2(){ 
		//??????
	$Now_Minute =  GetSystemTime( "minute")
	//??
	$Now_Hour =  GetSystemTime( "hour" )
	//??
	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
		//?????????,???????65535?$playvar 4208
		$nullitem = GetPlayerInfo(-1,"nullitem",3)
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You bag is full. Please clear you bag before your acquire the quest!")
			return
		endif
//---------------------------------------------
		AddPlayerInfo(-1,"item",12886,1)
		$var = GetPlayerVar(-1,402)
		$var += 1
		SetPlayerVar(-1,402,$var)
		BC( "screen", "player", -1, "You make a wish toward Spring, and acquired Heart of Prayers!" )
		BC( "chat", "player", -1, "You make a wish toward Spring, and acquired Heart of Prayers!" )
} 
//--------------201306????---------------------END

//	function OnOption2(){ 	
//		
//		BC( "dialogbox", "player", -1 ,"GUID:05319000210")
//	}
//	
//	//???????,???????????
//	function OnOption3(){ 	
//	
//		$line = GetServerLineID()
//		$time_hour = GetSystemTime( "hour" )
//		if $time_hour < 19
//			return
//		endif
//		if $time_hour > 21
//			return
//		endif
//		if $line != 6
//			if $line != 8
//				return
//			endif
//		endif
//		
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a < 1
//			BC( "dialogbox", "player", -1 ,"GUID:05319000211" )
//			return
//		endif
//		$yday = GetSystemTime( "yday" )
//		$time = GetPlayerVar( -1 , 3731 )
//		if $time != $yday
//			$a = GetPlayerVar( -1 , 3241 )
//			if $a < 3
//				BC( "dialogbox", "player", -1 ,"GUID:05319000212",$a,"GUID:05319000213")
//				return
//			else
//				AddPlayerInfo( -1 , "item" , 64447 , 1 )
//				SetPlayerVar( -1 , 3731 , $yday )
//			endif
//		else
//			BC( "dialogbox", "player", -1 ,"GUID:05319000214" )
//		endif
//		
//		
//	}
//	
//	//????
//	function OnOption4(){ 	
//	
//		$line = GetServerLineID()
//		$time_hour = GetSystemTime( "hour" )
//		if $time_hour < 19
//			return
//		endif
//		if $time_hour > 21
//			return
//		endif
//		if $line != 6
//			if $line != 8
//				return
//			endif
//		endif
//		$lv = GetPlayerInfo( -1 , "level" )
//		if $lv < 30
//			BC( "dialogbox", "player", -1 ,"GUID:05319000215" )
//			return
//		endif
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a < 1
//			BC( "dialogbox", "player", -1 ,"GUID:05319000216" )
//			return
//		endif
//		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
//		if $nobag < 1
//			BC( "dialogbox", "player", -1, "GUID:05319000217" )
//			return
//		endif
//		$count = GetServerVar( 134 )
//		if $count < 1500
//			BC( "dialogbox", "player", -1, "GUID:05319000218",$count,"GUID:05319000219" )
//			return
//		endif
//		$liang = GetServerVar( 135 )
//		if $liang > 2000
//			BC( "dialogbox", "player", -1, "GUID:05319000220" )
//			return
//		endif
//		$liang = $liang + 1
//		$yday = GetSystemTime( "yday" )
//		$time = GetPlayerVar( -1 , 3733 )
//		if $yday != $time
//			AddPlayerInfo( -1 , "item" , 64446 , 5 )
//			SetPlayerVar( -1 , 3733 , $yday )
//			SetServerVar( 135 , $liang )
//			return
//		else
//			BC( "dialogbox", "player", -1 ,"GUID:05319000221" )
//		endif
//		
//	}
//	
//	//?????
//	function OnOption5(){ 	
//	
//		$time_hour = GetSystemTime( "hour" )
//		$line = GetServerLineID()
//		if $time_hour < 19
//			return
//		endif
//		if $time_hour > 21
//			return
//		endif
//		if $line != 6
//			if $line != 8
//				return
//			endif
//		endif
//		
//		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
//		if $nobag < 1
//			BC( "dialogbox", "player", -1, "GUID:05319000222" )
//			return
//		endif
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a > 0
//			BC( "dialogbox", "player", -1 ,"GUID:05319000223" )
//			return
//		endif
//		$yday = GetSystemTime( "yday" )
//		$time = GetPlayerVar( -1 , 3734 )
//		if $yday != $time
//			//????
//			AddPlayerInfo( -1 , "item" , 64444 , 1 )
//			SetPlayerVar( -1 , 3734 , $yday )
//			//?????
//			SetPlayerVar( -1 , 3732 , 0 )
//			//???????
//			SetPlayerVar( -1 , 3237 , 0 )
//			SetPlayerVar( -1 , 3238 , 0 )
//			SetPlayerVar( -1 , 3239 , 0 )
//			SetPlayerVar( -1 , 3240 , 0 )
//			//4??????
//			SetPlayerVar( -1 , 3241 , 0 )
//			//??????
//			SetPlayerVar( -1 , 3244 , 0 )
//			
//			BC( "dialogbox", "player", -1 ,"GUID:05319000224" )
//		else
//			BC( "dialogbox", "player", -1 ,"GUID:05319000225" )
//		endif
//	}
//	
//	//??????,??????20?
//	function OnOption6(){ 	
//		
//		$time_hour = GetSystemTime( "hour" )
//		$line = GetServerLineID()
//		if $time_hour < 19
//			return
//		endif
//		if $time_hour > 21
//			return
//		endif
//		if $line != 6
//			if $line != 8
//				return
//			endif
//		endif
//		$a = GetPlayerInfo( -1 , "item" , 64445 )
//		if $a < 1
//			BC( "dialogbox", "player", -1 ,"GUID:05319000226" )
//			return
//		endif
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a < 1
//			BC( "dialogbox", "player", -1 ,"GUID:05319000227" )
//			return
//		endif
//		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
//		if $nobag < 1
//			BC( "dialogbox", "player", -1, "GUID:05319000228" )
//			return
//		endif
//		
//		$round = GetPlayerVar( -1 , 3732 )
//		$round = $round + 1
//		$count = GetServerVar( 134 )
//		$count = $count + 1
//		
//		if $count <= 1500
//	
//			$info = SubPlayerInfo( -1 , "item" , 64445 , 1 )
//			if $info != 0
//				return
//			endif
//			
//			if $round < 20
//				SetPlayerVar( -1 , 3732 , $round )
//				AddPlayerInfo( -1 , "item" , 64446 , 1 )
//				BC( "dialogbox", "player", -1 ,"GUID:05319000229",$round,"GUID:05319000230",$count,"GUID:05319000231")
//			else
//				SetPlayerVar( -1 , 3732 , 20 )
//				BC( "dialogbox", "player", -1 ,"GUID:05319000232",$count,"GUID:05319000233")
//			endif
//			
//			SetServerVar( 134 , $count )
//			
//			if $count == 100
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05319000234",$count,"GUID:05319000235" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05319000236",$count,"GUID:05319000237" )
//			endif
//			if $count == 300
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05319000238",$count,"GUID:05319000239" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05319000240",$count,"GUID:05319000241" )
//			endif
//			if $count == 500
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05319000242",$count,"GUID:05319000243" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05319000244",$count,"GUID:05319000245" )
//			endif
//			if $count == 700
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05319000246",$count,"GUID:05319000247" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05319000248",$count,"GUID:05319000249" )
//			endif
//			if $count == 900
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05319000250",$count,"GUID:05319000251" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05319000252",$count,"GUID:05319000253" )
//			endif
//			if $count == 1100
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05319000254",$count,"GUID:05319000255" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05319000256",$count,"GUID:05319000257" )
//			endif
//			if $count == 1300
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05319000258",$count,"GUID:05319000259" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05319000260",$count,"GUID:05319000261" )
//			endif
//			if $count == 1500
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05319000262", $line ,"GUID:05319000263" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05319000264", $line ,"GUID:05319000265" )	
//			endif
//		else
//			BC( "dialogbox", "player", -1 ,"GUID:05319000266" )	
//		endif
//	}