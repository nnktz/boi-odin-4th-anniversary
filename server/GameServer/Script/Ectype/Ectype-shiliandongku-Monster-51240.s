  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-3
	//		Author: ???
	//		TaskName:
	//		TaskID:   ??????
	//****************************************

	function OnDead(){
//		51239	????
//		51240	??????
//		AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
		$ectype_id = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		
		$playerID = GetPlayerID()
		$team_count = 0
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
			$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
					$team_count = $team_count + 1
				endif
			endif
			$Cid = $Cid + 1
		endwhile
		SetEctypeVar($ectype_id,20,$team_count)
//BC("screen","map",$ectype_id,"team_count = ",$team_count)
//BC("chat","map",$ectype_id,"team_count = ",$team_count)
//type=0?????
//6	??	50	??(??)
//12	????	51	????(??)
//14	??BOSS	53	??BOSS(??)
//79	??100+	80	??100+(??)
//205	??????
//207	??????(100+)
//206	????????
//208	????????(100+)
//-------------
		if $type == 0
			$status_mon_a = 6
			$status_mon_tuteng = 12
			$status_mon_boss = 14
			$status_mon_b = 205
			if $lv >= 80
				$status_mon_a = 79
				$status_mon_b = 207
			endif
		else
			$status_mon_a = 50
			$status_mon_tuteng = 51
			$status_mon_boss = 53
			$status_mon_b = 206
			if $lv >= 80
				$status_mon_a = 80
				$status_mon_b = 208
			endif
		endif
		$turnround = GetEctypeVar($ectype_id,114)
		if $turnround == 1
			$addposx = 68
			$addposy = 67
		endif
		if $turnround == 2
			$addposx = 68
			$addposy = 61
		endif
		if $turnround == 3
			$addposx = 58
			$addposy = 61
		endif
		if $turnround == 4
			$addposx = 58
			$addposy = 67
		endif
		if $turnround == 5
			$addposx = 68
			$addposy = 67
		endif
//-----------------------------------------------------------????????
//21	?????????
		$live = GetEctypeVar($ectype_id,21)
		$live -= 1
//22	?????????????
		$dead_wave = GetEctypeVar($ectype_id,22)
		$dead_wave += 1
		SetEctypeVar($ectype_id,22,$dead_wave)
//23	?????????
		$dead_total = GetEctypeVar($ectype_id,23)
		$dead_total += 1
		SetEctypeVar($ectype_id,23,$dead_total)
//24	???????
		$time_tuteng = GetEctypeVar($ectype_id,24)
//????
		$max_live = $team_count * 2
		$max_live = $max_live + 3
		$max_wave = $team_count + 4
		$max_wave = $max_wave * 6
		$max_wave_live = $max_wave - $max_live

//??,??????+2,??+1,???wave?????
		if $time_tuteng == 1
			if $dead_wave < $max_wave_live
				$liveif = $live + 1
				if $liveif < $max_live
					$monsterADD = 2
					$randn = RandomNumber(1,2)
					if $randn == 1
						BC("screen","map",$ectype_id,"More and more monsters")
					endif
				else
					$monsterADD = 1
					$randn = RandomNumber(1,2)
					if $randn == 1
						BC("screen","map",$ectype_id,"The monsters are constantly reborn!")
					endif
				endif
			else
				$monsterADD = 0
				//????????????
					$mapid = GetPlayerInfo( -1 , mapid )
					$n = 0
					while $n < 6
						$teamplayer_id = GetTeamMemberID( -1 , $n )
						$n = $n + 1
						if $teamplayer_id != -1
							//??????
							$plus = RandomNumber(1,500)
							if $plus == 1
								AddTarotCard($teamplayer_id,12521)
							endif
						endif
					endwhile
					$bosssilvercard = GetEctypeVar($ectype_id,51)
					$bosssilvercard += 1
					SetEctypeVar($ectype_id,23,$bosssilvercard)
				//????????????
				$randn = RandomNumber(1,3)
				if $randn == 1
					BC("screen","map",$ectype_id,"The energy of the Abyss Totem is disappearing!")
				endif
				if $randn == 2
					BC("screen","map",$ectype_id,"Sacrifice Degree can not be increased any more!")
				endif
			endif
		endif
//????????
		if $time_tuteng == 0
			$monsterADD = 0
				$randn = RandomNumber(1,2)
				if $randn == 1
					BC("screen","map",$ectype_id,"The energy of the Abyss Totem is disappearing!")
				endif
		endif
		
		if $monsterADD > 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster(51240,$status_mon_b,$lv,$status_mon_b,$monster_fieldlevel,$monsterADD,$ectype_id,$addposx,$addposy,6)
			else
				AddLevelMonster(51240,$status_mon_b,$lv,$monsterADD,$ectype_id,$addposx,$addposy,6)
			endif
		endif
		
		$live += $monsterADD
		SetEctypeVar($ectype_id,21,$live)

//		BC("chat","map",$ectype_id,"dead_total = ",$dead_total)
//		BC("chat","map",$ectype_id,"dead_wave = ",$dead_wave)
//		BC("chat","map",$ectype_id,"monsterADD = ",$monsterADD)
//		BC("chat","map",$ectype_id,"max_wave = ",$max_wave)
//		BC("chat","map",$ectype_id,"live = ",$live)
//		BC("chat","map",$ectype_id,"max_live = ",$max_live)

//	//2013?????????
//	$Now_Mday =  GetSystemTime( "mday" )
//		$Now_Month =  GetSystemTime( "month" )
//		$Now_Year =  GetSystemTime( "year" )
//
//		if $Now_Year == 2013
//			if $Now_Month == 4
//				if $Now_Mday > 15
//					$playerid = GetPlayerID()
//					$dropitemDbase = 90275
//					$Cid = 0
//					while $Cid < 6
//					  $teamplayer_id = GetTeamMemberID( $playerid, $Cid )
//					    $lenD = GetPlayerDistance( $playerid, $teamplayer_id )
//					    if $teamplayer_id > 0
//					      if $lenD < 25
//					        DropMonsterItems( $teamplayer_id, $dropitemDbase )		
//					      endif
//					    endif
//					    $Cid = $Cid + 1
//					endwhile
//				endif
//			endif
//			if $Now_Month == 5
//				if $Now_Mday < 17
//					$playerid = GetPlayerID()
//					$dropitemDbase = 90275
//					$Cid = 0
//					while $Cid < 6
//					  $teamplayer_id = GetTeamMemberID( $playerid, $Cid )
//					    $lenD = GetPlayerDistance( $playerid, $teamplayer_id )
//					    if $teamplayer_id > 0
//					      if $lenD < 25
//					        DropMonsterItems( $teamplayer_id, $dropitemDbase )		
//					      endif
//					    endif
//					    $Cid = $Cid + 1
//					endwhile
//				endif
//			endif
//		endif

	}




