//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2012/6/28
//	--		Author:???
//	--		Class:	Monster-11533.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

	function OnDead(){
		
		$RankList = GetFieldRankListValue(499)
		
		if $RankList >= 30
		
			$playerID = GetPlayerID()
			$n = 0
			while $n < 6
				$teamplayer_id = GetTeamMemberID($playerID,$n)
				if $teamplayer_id > 0
					$lenD = GetPlayerDistance($playerID,$teamplayer_id )
					if $lenD < 15
						$sui = RandomNumber(1,10000)
						if $sui < 1000
							DropMonsterItems($teamplayer_id,90248)
						endif
					endif
				endif
				$n = $n + 1
			endwhile
		endif
		
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//???BOSS??
		SetServerVar(46 , 1)
		//????BOSS???
		
			DropMonsterItems(-1, 90200)	
		
		BC( "chat", "server", -1, "Player:",#player_name,"I led a party to kill Prince Arbyss. The Maze of Mystery Trap and the Seal to the Palace of Osiris has been removed." )
		BC( "screen", "server", -1, "Player:",#player_name,"I led a party to kill Prince Arbyss. The Maze of Mystery Trap and the Seal to the Palace of Osiris has been removed."  )
		
		$a = GetServerVar(44)
		$b = GetServerVar(45)
		$c = GetServerVar(46)
		$d = GetServerVar(47)
		if $a == 0
			return
		endif
		if $b == 0
			return
		endif
		if $c == 0
			return
		endif
		if $d == 0
			return
		endif
		BC( "chat", "server", -1, "The Seal on the Palace of Osiris has been removed. The fallen god awaits challengers." )
		BC( "screen", "server", -1, "The Seal on the Palace of Osiris has been removed. The fallen god awaits challengers."  )
		
	}	