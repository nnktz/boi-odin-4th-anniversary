	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013
	//		Author:???
	//		Best wishs for all !
	//		??????????,??????????????
	//****************************************

	function OnRequest(){
//3471	v3.90	????boss???????(6????)
		$week = GetNowWeek()
		$getvar = GetPlayerVar(-1,3471)
		if $week == $getvar
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
	}
	
	//?????BOSS??
	function OnOption0(){
		
		call getmappos()
		$team_headerID = GetTeamHeaderID(-1)
		$playerid = GetPlayerID()
		if $playerid != $team_headerID
			BC("dialogbox","player",-1,"You are not the Party Leader." )
			return
		endif
		$size = GetTeamAreaSize(-1)
		if $size > 10
			BC("dialogbox","player",-1,"Your party members are too far away!" )
			return
		endif
		$allitem = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID(-1,$Cid)
			if $teamplayer_id > 0
				$getitem = GetPlayerInfo($teamplayer_id,"item",$needitemID)
				if $getitem > 0
					$allitem += $getitem
				endif
			endif
			$Cid = $Cid + 1
		endwhile
		if $allitem < $needitem
			BC("dialogbox","player",-1,"You party's Key quantity is ",$allitem,"/",$needitem,"\nCan't enter Boss's Room" )
			return
		endif
		$week = GetNowWeek()
		$map_x *= 100
		$map_x /= 256
		$map_y *= 100
		$map_y /= 256
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID(-1,$Cid)
			if $teamplayer_id > 0
				$result = SubPlayerInfo($teamplayer_id,"item",$needitemID,-1)
				if $result == 0
					$result = FlyToEctype($teamplayer_id,$map_id,$map_x,$map_y)
					if $result > 0
						SetPlayerVar($teamplayer_id,3471,$week)
						$havetask1921 = IsTaskAccept($teamplayer_id,1921)
						if $havetask1921 == 0
							$item = GetPlayerInfo($teamplayer_id,"item",12873)
							if $item == 0
								AddPlayerInfo($teamplayer_id,"item",12873,1)
							endif
						endif
						//------------------LOG
						#logname = GetPlayerInfo($teamplayer_id,"name")
						#str = strcat_x("PlayerLog_Script-Enter Boss's Room-Player[",#logname)
						#str = strcat_x(#str,"] entered Pyramid Boss Room, Map [%d]")
						$var0 = $map_id
						$var1 = $map_id
						ScriptLog0(#str,$var0,$var1)
						SetPlayerActLog($teamplayer_id,61,1002)
						//------------------LOG
					endif
				endif
			endif
			$Cid = $Cid + 1
		endwhile
		$ectype_id = GetCurEctypeID()
		#player_name = GetPlayerInfo(-1,"name")
		BC("screen","map",$ectype_id,"Player ",#player_name,#bctip)
		$getvar = GetServerVar($servervar)
		if $getvar == 0
			call getmonsterid()
			AddMonsterByFloat($monsterID,1,$ectype_id,$mapX,$mapY,0)
			BC("screen","map",$ectype_id,#bctipBOSS)
//			BC("screen","map",$ectype_id,"monsterID = ",$monsterID)
			SetServerVar($servervar,1)
		endif
	}
	
	function OnOption1(){
		
		$week = GetNowWeek()
		$getvar = GetPlayerVar(-1,3471)
		if $week != $getvar
			return
		endif
		call getmappos()
		$map_x *= 100
		$map_x /= 256
		$map_y *= 100
		$map_y /= 256
		$result = FlyToEctype(-1,$map_id,$map_x,$map_y)
		
	}
	
	
	function getmappos(){
		
		$ectype_id = GetCurEctypeID()
//???-????	26623	577	64184	??????	10806	????
		if $ectype_id == 26623
			$map_id = 577
			//?????
			$map_x = 185
			$map_y = 189
			//boss?
			$mapX = 215
			$mapY = 220
			#bctip = " has led the party and entered Queen's Catacomb."
			#bctipBOSS = "Shadow of the Queen appeared!"
			$needitem = 200
			$needitemID = 64184
			$servervar = 44
		endif
//???-????	26624	578	64185	??????	10816	????
		if $ectype_id == 26624
			$map_id = 578
			//?????
			$map_x = 116
			$map_y = 211
			//boss?
			$mapX = 97
			$mapY = 231
			#bctip = " has led the party and entered Behemoth's Lair."
			#bctipBOSS = "Molmes appeared!"
			$needitem = 200
			$needitemID = 64185
			$servervar = 45
		endif
//???-????	26625	579	64186	??????	10826	?????
		if $ectype_id == 26625
			$map_id = 579
			//?????
			$map_x = 209
			$map_y = 117
			//boss?
			$mapX = 227
			$mapY = 97
			#bctip = " has led the party and entered Maze of Mystery."
			#bctipBOSS = " Prince Arbyss appeared!"
			$needitem = 200
			$needitemID = 64186
			$servervar = 46
		endif
//???-????	26626	580	64187	??????	10836	???????
		if $ectype_id == 26626
			$map_id = 580
			//?????
			$map_x = 130
			$map_y = 122
			//boss?
			$mapX = 113
			$mapY = 104
			#bctip = " has led the party and entered Hexagram Array."
			#bctipBOSS = " Arch Heretic Britacesk appeared!"
			$needitem = 200
			$needitemID = 64187
			$servervar = 47
		endif
//???-????	26625	575	64188	??????	11536	?????
		if $ectype_id == 26621
			$map_id = 575
			//?????
			$map_x = 154
			$map_y = 177
			//boss?
			$mapX = 155
			$mapY = 158
			#bctip = " has led the party and entered Corridor of Death."
			#bctipBOSS = " Warden Farma appeared!"
			$needitem = 200
			$needitemID = 64188
			$servervar = 48
		endif
//???-????	26626	576	64189	??????	11542	?????
		if $ectype_id == 26622
			$map_id = 576
			//?????
			$map_x = 172
			$map_y = 163
			//boss?
			$mapX = 163
			$mapY = 161
			#bctip = " has led the party and entered Pharaoh's Throne."
			#bctipBOSS = " Devilworm Falio appeared!"
			$needitem = 200
			$needitemID = 64189
			$servervar = 49
		endif
		
	}
	
	function getmonsterid(){
		
		$servsergrade = GetServerGrade()
//575	???-????	26621
//576	???-????	26622
//577	???-????	26623
//578	???-????	26624
//579	???-????	26625
//580	???-????	26626
		$monsterID = 0
//10806	????
//10816	????
//10826	?????
//10836	???????
//11536	?????
//11542	?????
		if $servsergrade == 0
			if $map_id == 577
				$monsterID = 10806
			endif
			if $map_id == 578
				$monsterID = 10816
			endif
			if $map_id == 579
				$monsterID = 10826
			endif
			if $map_id == 580
				$monsterID = 10836
			endif
			if $map_id == 575
				$monsterID = 11536
			endif
			if $map_id == 576
				$monsterID = 11542
			endif
		endif
//11491	????
//11492	????
//11493	?????
//11494	???????
//11537	?????
//11543	?????
		if $servsergrade == 1
			if $map_id == 577
				$monsterID = 11491
			endif
			if $map_id == 578
				$monsterID = 11492
			endif
			if $map_id == 579
				$monsterID = 11493
			endif
			if $map_id == 580
				$monsterID = 11494
			endif
			if $map_id == 575
				$monsterID = 11537
			endif
			if $map_id == 576
				$monsterID = 11543
			endif
		endif
//11501	????
//11502	????
//11503	?????
//11504	???????
//11538	?????
//11544	?????
		if $servsergrade == 2
			if $map_id == 577
				$monsterID = 11501
			endif
			if $map_id == 578
				$monsterID = 11502
			endif
			if $map_id == 579
				$monsterID = 11503
			endif
			if $map_id == 580
				$monsterID = 11504
			endif
			if $map_id == 575
				$monsterID = 11538
			endif
			if $map_id == 576
				$monsterID = 11544
			endif
		endif
//11511	????
//11512	????
//11513	?????
//11514	???????
//11539	?????
//11545	?????
		if $servsergrade == 3
			if $map_id == 577
				$monsterID = 11511
			endif
			if $map_id == 578
				$monsterID = 11512
			endif
			if $map_id == 579
				$monsterID = 11513
			endif
			if $map_id == 580
				$monsterID = 11514
			endif
			if $map_id == 575
				$monsterID = 11539
			endif
			if $map_id == 576
				$monsterID = 11545
			endif
		endif
//11521	????
//11522	????
//11523	?????
//11524	???????
//11540	?????
//11546	?????
		if $servsergrade == 4
			if $map_id == 577
				$monsterID = 11521
			endif
			if $map_id == 578
				$monsterID = 11522
			endif
			if $map_id == 579
				$monsterID = 11523
			endif
			if $map_id == 580
				$monsterID = 11524
			endif
			if $map_id == 575
				$monsterID = 11540
			endif
			if $map_id == 576
				$monsterID = 11546
			endif
		endif
//11531	????
//11532	????
//11533	?????
//11534	???????
//11541	?????
//11547	?????
		if $servsergrade == 5
			if $map_id == 577
				$monsterID = 11531
			endif
			if $map_id == 578
				$monsterID = 11532
			endif
			if $map_id == 579
				$monsterID = 11533
			endif
			if $map_id == 580
				$monsterID = 11534
			endif
			if $map_id == 575
				$monsterID = 11541
			endif
			if $map_id == 576
				$monsterID = 11547
			endif
		endif
	}

