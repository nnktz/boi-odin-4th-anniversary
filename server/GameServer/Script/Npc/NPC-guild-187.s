	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/19
	//		Author:???
	//		TaskName:NPC-guild-187.s
	//		TaskID:????  ???
	//
	//****************************************
	
	function OnRequest(){
		$gid = GetPlayerInfo( -1 , "guildid")
		$Task = IsTaskAccept(-1,2143)
		$com1 = GetPlayerVar(-1,3672)
		//---------????,????,???????-----------------------
		if $gid == 0
			DisableNpcOption(0)
		endif
		if $Task != 0
			DisableNpcOption(0)
		endif
		if $com1 == 1
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){

		$count = GetTeamMemberCount(-1)
		$task = IsTaskAccept(-1,2143)
		
		$complateone = GetPlayerVar(-1,3672)
		$complatetwo = GetPlayerVar(-1,3673)
		$complatethr = GetPlayerVar(-1,3674)
		
		
		$id = GetPlayerID()
		$headerID = GetTeamHeaderID(-1 )
			
		$size = GetTeamAreaSize( -1 )
		$level = GetPlayerInfo( -1 , "level")
		
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
			
		$glod = GetPlayerInfo( -1 , "item",12569)
		$silver = GetPlayerInfo( -1 , "item",12570)
//----------????------start---------------------			
		if $count == 1
			if $task != 0
				BC( "dialogbox", "player", -1, "You haven't acquired Ceremony of Gods quest." )
				return
			endif
			if $gid == 0
				BC( "dialogbox", "player", -1, "You are not a guild member yet." )
				return
			endif
			if $glod == 0
				if $silver == 0
					BC( "dialogbox", "player", -1, "You don't have the items for the ceremony." )
					return
				endif
			endif
			
			if $complatethr == 1
				BC( "dialogbox", "player", -1, "You have already finished the trial of the god of wisdom. You cannot take the trial of the god of protection now.\n\nIf you had accidentally trashed the trial quest, you would not be able to participate in today's event. Please visit Gerd tomorrow to restart it." )
				return
			endif
			if $complatetwo == 1
				BC( "dialogbox", "player", -1, "You have already finished the trial of the god of war. You cannot take the trial of the god of protection now.\n\nIf you had accidentally trashed the trial quest, you would not be able to participate in today's event. Please visit Gerd tomorrow to restart it." )
				return
			endif
			if $complateone == 1
				BC( "dialogbox", "player", -1, "You have already taken the trial of the god of protection. You cannot take the trial of the god of protection now.\n\nIf you had accidentally trashed the trial quest, you would not be able to participate in today's event. Please visit Gerd tomorrow to restart it." )
				return
			endif
			
			$m = RandomNumber ( 0,1 )
			if $m == 0
				AcceptTask(-1,2134)
				SetPlayerVar(-1,3672,1)
			else
				AcceptTask(-1,2135)
				SetPlayerVar(-1,3672,1)
			endif
		endif	
		
//----------????------end---------------------		
//----------????------strat---------------------		
		if $count > 1
		
			$Men1 = GetTeamMemberID( -1, 0 )
			$Men2 = GetTeamMemberID( -1, 1 )
			$Men3 = GetTeamMemberID( -1, 2 )
			$Men4 = GetTeamMemberID( -1, 3 )
			$Men5 = GetTeamMemberID( -1, 4 )
			$Men6 = GetTeamMemberID( -1, 5 )
			
			if $task != 0
				BC( "dialogbox", "player", -1, "You haven't acquired Ceremony of Gods quest." )
				return
			endif
			if $gid == 0
				BC( "dialogbox", "player", -1, "You are not a guild member yet." )
				return
			endif
			if $id != $headerID
				BC( "dialogbox", "player", -1, "You are not the party leader!" )
				return
			endif
			if $size > 8
				BC( "dialogbox", "player", -1, "Please keep all party members together. Some party members are standing too far." )
				return
			endif
			if $glod == 0
				if $silver == 0
					BC( "dialogbox", "player", -1, "You don't have the items for the ceremony." )
					return
				endif
			endif
			//---------1???????1?????---------------
			if $Men1 != -1
				if $id != $Men1
					#name1 = GetPlayerInfo($Men1,"name" )
					$gid1 = GetPlayerInfo( $Men1 , "guildid")
					$glod1 = GetPlayerInfo( $Men1 , "item",12569)
					$silver1 = GetPlayerInfo( $Men1 , "item",12570)
					$task1 = IsTaskAccept($Men1,2143)
					
					if $task1 != 0
						BC( "dialogbox", "player", -1, "Party member ",#name1," has not acquired the quest Ceremony of Gods." )
						return
					endif
					if $gid1 != $gid
						BC( "dialogbox", "player", -1, "Party member ",#name1," is not a guildmate of yours. Cooperations in this event can happen only among the members of a same guild." )
						return
					endif
					if $glod1 == 0
						if $silver1 == 0
							BC( "chat", "player", -1, "Party member ",#name1," does not have the items for the ceremony. She/He cannot acquire the trial of the god of war, as well as the reward of it." )
						endif
					endif
				endif	
			endif
			//---------2???????2?????---------------
			if $Men2 != -1
				if $id != $Men2
					#name2 = GetPlayerInfo($Men2,"name" )
					$gid2 = GetPlayerInfo( $Men2 , "guildid")
					$glod2 = GetPlayerInfo( $Men2 , "item",12569)
					$silver2 = GetPlayerInfo( $Men2 , "item",12570)
					$task2 = IsTaskAccept($Men2,2143)
					
					if $task2 != 0
						BC( "dialogbox", "player", -1, "Party member ",#name2," has not acquired the quest Ceremony of Gods." )
						return
					endif
					if $gid2 != $gid
						BC( "dialogbox", "player", -1, "Party member ",#name2," is not a guildmate of yours. Cooperations in this event can happen only among the members of a same guild." )
						return
					endif
					if $glod2 == 0
						if $silver2 == 0
							BC( "chat", "player", -1, "Party member ",#name2," does not have the items for the ceremony. She/He cannot acquire the trial of the god of war, as well as the reward of it." )
						endif
					endif
				endif	
			endif
			//---------3???????3?????---------------
			if $Men3 != -1
				if $id != $Men3
					#name3 = GetPlayerInfo($Men3,"name" )
					$gid3 = GetPlayerInfo( $Men3 , "guildid")
					$glod3 = GetPlayerInfo( $Men3 , "item",12569)
					$silver3 = GetPlayerInfo( $Men3 , "item",12570)
					$task3 = IsTaskAccept($Men3,2143)
					
					if $task3 != 0
						BC( "dialogbox", "player", -1, "Party member ",#name3," has not acquired the quest Ceremony of Gods." )
						return
					endif
					if $gid3 != $gid
						BC( "dialogbox", "player", -1, "Party member ",#name3," is not a guildmate of yours. Cooperations in this event can happen only among the members of a same guild." )
						return
					endif
					if $glod3 == 0
						if $silver3 == 0
							BC( "chat", "player", -1, "Party member ",#name3," does not have the items for the ceremony. She/He cannot acquire the trial of the god of war, as well as the reward of it." )
						endif
					endif
				endif	
			endif
			//---------4???????4?????---------------
			if $Men4 != -1
				if $id != $Men4
					#name4 = GetPlayerInfo($Men4,"name" )
					$gid4 = GetPlayerInfo( $Men4 , "guildid")
					$glod4 = GetPlayerInfo( $Men4 , "item",12569)
					$silver4 = GetPlayerInfo( $Men4 , "item",12570)
					$task4 = IsTaskAccept($Men4,2143)
					
					if $task4 != 0
						BC( "dialogbox", "player", -1, "Party member ",#name4," has not acquired the quest Ceremony of Gods." )
						return
					endif
					if $gid4 != $gid
						BC( "dialogbox", "player", -1, "Party member ",#name4," is not a guildmate of yours. Cooperations in this event can happen only among the members of a same guild." )
						return
					endif
					if $glod4 == 0
						if $silver4 == 0
							BC( "chat", "player", -1, "Party member ",#name4," does not have the items for the ceremony. She/He cannot acquire the trial of the god of war, as well as the reward of it." )
						endif
					endif
				endif	
			endif
			//---------5???????5?????---------------
			if $Men5 != -1
				if $id != $Men5
					#name5 = GetPlayerInfo($Men5,"name" )
					$gid5 = GetPlayerInfo( $Men5 , "guildid")
					$glod5 = GetPlayerInfo( $Men5 , "item",12569)
					$silver5 = GetPlayerInfo( $Men5 , "item",12570)
					$task5 = IsTaskAccept($Men5,2143)
					
					if $task5 != 0
						BC( "dialogbox", "player", -1, "Party member ",#name5," has not acquired the quest Ceremony of Gods." )
						return
					endif
					if $gid5 != $gid
						BC( "dialogbox", "player", -1, "Party member ",#name5," is not a guildmate of yours. Cooperations in this event can happen only among the members of a same guild." )
						return
					endif
					if $glod5 == 0
						if $silver5 == 0
							BC( "chat", "player", -1, "Party member ",#name5," does not have the items for the ceremony. She/He cannot acquire the trial of the god of war, as well as the reward of it." )
						endif
					endif
				endif	
			endif
			//---------6???????6?????---------------
			if $Men6 != -1
				if $id != $Men6
					#name6 = GetPlayerInfo($Men6,"name" )
					$gid6 = GetPlayerInfo( $Men6 , "guildid")
					$glod6 = GetPlayerInfo( $Men6 , "item",12569)
					$silver6 = GetPlayerInfo( $Men6 , "item",12570)
					$task6 = IsTaskAccept($Men6,2143)
					
					if $task6 != 0
						BC( "dialogbox", "player", -1, "Party member ",#name6," has not acquired the quest Ceremony of Gods." )
						return
					endif
					if $gid6 != $gid
						BC( "dialogbox", "player", -1, "Party member ",#name6," is not a guildmate of yours. Cooperations in this event can happen only among the members of a same guild." )
						return
					endif
					if $glod6 == 0
						if $silver6 == 0
							BC( "chat", "player", -1, "Party member ",#name6," does not have the items for the ceremony. She/He cannot acquire the trial of the god of war, as well as the reward of it." )
						endif
					endif
				endif	
			endif
		//---------???--------------
			$n = RandomNumber ( 0,1 )
			if $n == 0
			
				if $Men1 != -1
					SetPlayerVar($Men1,3672,1)
					$glod1 = GetPlayerInfo( $Men1 , "item",12569)
					$silver1 = GetPlayerInfo( $Men1 , "item",12570) 
					if $glod1 != 0
						
						AcceptTask($Men1,2134)
						BC( "dialogbox", "player", $Men1, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver1 != 0
							AcceptTask($Men1,2134)
							
							BC( "dialogbox", "player", $Men1, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men2 != -1
					SetPlayerVar($Men2,3672,1)
					$glod2 = GetPlayerInfo( $Men2 , "item",12569)
					$silver2 = GetPlayerInfo( $Men2 , "item",12570) 
					if $glod2 != 0
						
						AcceptTask($Men2,2134)
						BC( "dialogbox", "player", $Men2, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver2 != 0
							
							AcceptTask($Men2,2134)
							BC( "dialogbox", "player", $Men2, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men3 != -1
					SetPlayerVar($Men3,3672,1)
					$glod3 = GetPlayerInfo( $Men3 , "item",12569)
					$silver3 = GetPlayerInfo( $Men3 , "item",12570) 
					if $glod3 != 0
						
						AcceptTask($Men3,2134)
						BC( "dialogbox", "player", $Men3, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver3 != 0
							
							AcceptTask($Men3,2134)
							BC( "dialogbox", "player", $Men3, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men4 != -1
					SetPlayerVar($Men4,3672,1)
					$glod4 = GetPlayerInfo( $Men4 , "item",12569)
					$silver4 = GetPlayerInfo( $Men4 , "item",12570) 
					if $glod4 != 0
						
						AcceptTask($Men4,2134)
						BC( "dialogbox", "player", $Men4, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver4 != 0
							
							AcceptTask($Men4,2134)
							BC( "dialogbox", "player", $Men4, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men5 != -1
					SetPlayerVar($Men5,3672,1)
					$glod5 = GetPlayerInfo( $Men5 , "item",12569)
					$silver5 = GetPlayerInfo( $Men5 , "item",12570) 
					if $glod5 != 0
						
						AcceptTask($Men5,2134)
						BC( "dialogbox", "player", $Men5, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver5 != 0
							
							AcceptTask($Men5,2134)
							BC( "dialogbox", "player", $Men5, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men6 != -1
					SetPlayerVar($Men6,3672,1)
					$glod6 = GetPlayerInfo( $Men6 , "item",12569)
					$silver6 = GetPlayerInfo( $Men6 , "item",12570) 
					if $glod6 != 0
						
						AcceptTask($Men6,2134)
						BC( "dialogbox", "player", $Men6, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver6 != 0
							
							AcceptTask($Men6,2134)
							BC( "dialogbox", "player", $Men6, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
			endif
			
			if $n == 1
				if $Men1 != -1
					SetPlayerVar($Men1,3672,1)
					$glod1 = GetPlayerInfo( $Men1 , "item",12569)
					$silver1 = GetPlayerInfo( $Men1 , "item",12570) 
					if $glod1 != 0
						
						AcceptTask($Men1,2135)
						BC( "dialogbox", "player", $Men1, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver1 != 0
							
							AcceptTask($Men1,2135)
							BC( "dialogbox", "player", $Men1, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men2 != -1
					SetPlayerVar($Men2,3672,1)
					$glod2 = GetPlayerInfo( $Men2 , "item",12569)
					$silver2 = GetPlayerInfo( $Men2 , "item",12570) 
					if $glod2 != 0
						
						AcceptTask($Men2,2135)
						BC( "dialogbox", "player", $Men2, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver2 != 0
						
							AcceptTask($Men2,2135)
							BC( "dialogbox", "player", $Men2, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men3 != -1
					SetPlayerVar($Men3,3672,1)
					$glod3 = GetPlayerInfo( $Men3 , "item",12569)
					$silver3 = GetPlayerInfo( $Men3 , "item",12570) 
					if $glod3 != 0
						
						AcceptTask($Men3,2135)
						BC( "dialogbox", "player", $Men3, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver3 != 0
							
							AcceptTask($Men3,2135)
							BC( "dialogbox", "player", $Men3, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men4 != -1
					SetPlayerVar($Men4,3672,1)
					$glod4 = GetPlayerInfo( $Men4 , "item",12569)
					$silver4 = GetPlayerInfo( $Men4 , "item",12570) 
					if $glod4 != 0
						
						AcceptTask($Men4,2135)
						BC( "dialogbox", "player", $Men4, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver4 != 0
							
							AcceptTask($Men4,2135)
							BC( "dialogbox", "player", $Men4, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
				
				if $Men5 != -1
					$glod5 = GetPlayerInfo( $Men5 , "item",12569)
					$silver5 = GetPlayerInfo( $Men5 , "item",12570) 
					SetPlayerVar($Men5,3672,1)
					if $glod5 != 0
						
						AcceptTask($Men5,2135)
						BC( "dialogbox", "player", $Men5, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver5 != 0
							
							AcceptTask($Men5,2135)
							BC( "dialogbox", "player", $Men5, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif
					
				if $Men6 != -1
					$glod6 = GetPlayerInfo( $Men6 , "item",12569)
					$silver6 = GetPlayerInfo( $Men6 , "item",12570)
					SetPlayerVar($Men6,3672,1) 
					if $glod6 != 0
						
						AcceptTask($Men6,2135)
						BC( "dialogbox", "player", $Men6, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
					else
						if $silver6 != 0
							
							AcceptTask($Men6,2135)
							BC( "dialogbox", "player", $Men6, "You have taken the trial of the god of protection. Reward will be given to you upon the completion of the quest." )
						endif
					endif
					
				endif	
			endif
		endif
	}
		
	//----------????------end---------------------	
	